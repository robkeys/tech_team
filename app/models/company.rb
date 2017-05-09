class Company < ApplicationRecord

  has_many :items
  has_many :contact_joins, as: :contactable
  has_many :contacts, through: :contact_joins

end
