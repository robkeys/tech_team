class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :email
      t.boolean :is_address
      t.boolean :is_email
      t.boolean :is_fax
      t.boolean :is_phone
      t.boolean :is_primary
      t.string :phone
      t.string :type

      t.timestamps
    end
  end
end
