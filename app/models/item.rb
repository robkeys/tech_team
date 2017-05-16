class Item < ApplicationRecord

  belongs_to :category, :optional => true
  belongs_to :vendor, :class_name => 'Company', :optional => true
  belongs_to :manufacturer, :class_name => 'Company', :optional => true
  belongs_to :site, :optional => true
  belongs_to :staff, :optional => true
  has_many :maintenances

  scope :sort_asc, lambda { order('id ASC') }
  scope :sort_desc, lambda { order('id DESC') }
  scope :search, lambda { |query| where(["mac_address LIKE ?", "%#{query}%"]) }
  scope :search_query, lambda { |query|
    return nil if query.blank?
    # MySQL is case insensitive, but use downcase in case a different flavor is used.
    # Also we are splitting the query into individual terms.
    terms = query.to_s.downcase.split(/\s+/)
    # replace * with % for wildcard search, then append % and remove duplicates
    terms = terms.map { |e| ('%' + e.gsub( '*', '%') + '%').gsub(/%+/, '%') }
    # Configure number of OR conditions for provision of interpolation arguments.
    # Adjust this if you change the number of OR conditions.
    num_or_conds = 7
    where(terms.map { |term| 'LOWER(items.cost) LIKE ? OR '\
      'LOWER(items.domain) LIKE ? OR LOWER(items.domain_name) LIKE ? OR '\
      'LOWER(items.ipv4) LIKE ? OR LOWER(items.mac_address) LIKE ? OR '\
      'LOWER(items.model) LIKE ? OR LOWER(items.serial) LIKE ?'}.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }
  scope :sorted_by, lambda { |sort_option|
    # extract sort direction from param value
    direction = (sort_option =~ /DESC$/) ? 'DESC' : 'ASC'
    case sort_option.to_s
      when /^created_at_/
        order("items.created_at #{direction}")
      when /^domain_name_/
        order("LOWER(items.domain_name) #{direction}")
      when /^cost_/
        order("items.cost #{direction}")
      else
        raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }

  filterrific(
      default_filter_params: { sorted_by: 'created_at_DESC' },
      available_filters: [
          :sorted_by,
          :search_query
      ]
  )

  def self.options_for_sorted_by
    [
      ['Domain Name (a-z)', 'name_ASC'],
      ['Creation Date (newest first)', 'created_at_DESC'],
      ['Creation Date (oldest first)', 'created_at_ASC'],
      ['Cost (lowest to highest)', 'cost_ASC'],
      ['Cost (highest to lowest)', 'cost_DESC']
    ]
  end
end
