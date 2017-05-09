class Maintenance < ApplicationRecord

  belongs_to :tech, :class_name => 'Staff', :foreign_key => :tech_id
  has_many :items

end
