class Item < ApplicationRecord

  belongs_to :category, :optional => true
  belongs_to :vendor, :class_name => 'Company', :optional => true
  belongs_to :manufacturer, :class_name => 'Company', :optional => true
  belongs_to :site, :optional => true
  belongs_to :staff, :optional => true
  has_many :maintenances

  scope :sort_asc, lambda { order("id ASC") }
  scope :sort_desc, lambda { order("id DESC") }
  scope :search, lambda { |query| where(["mac_address LIKE ?", "%#{query}%"]) }

end
