class ContactJoin < ApplicationRecord

  belongs_to :contactable, polymorphic: true
  belongs_to :contact

end
