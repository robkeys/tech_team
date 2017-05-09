class Site < ApplicationRecord

  belongs_to :parent, :class_name => 'Site', :foreign_key => :parent_id
  has_many :children, :class_name => 'Site'
  has_many :items
  has_many :contact_joins, as: :contactable
  has_many :contacts, through: :contact_joins

end
