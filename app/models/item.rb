class Item < ApplicationRecord

  belongs_to :category
  belongs_to :vendor, :class_name => 'Company'
  belongs_to :manufacturer, :class_name => 'Company'
  belongs_to :site
  belongs_to :staff
  has_many :maintenances

end
