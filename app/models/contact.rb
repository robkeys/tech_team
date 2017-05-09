class Contact < ApplicationRecord

  belongs_to :contactable, polymorphic: true
  has_many :contact_joins

end
