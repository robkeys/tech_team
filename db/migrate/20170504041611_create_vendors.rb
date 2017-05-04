class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :customer_number
      t.string :name
      t.string :rep_name_first
      t.string :rep_name_last
      t.string :rep_phone
      t.string :rep_email
      t.text :notes

      t.timestamps
    end
  end
end
