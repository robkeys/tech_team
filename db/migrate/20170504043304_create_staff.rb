class CreateStaff < ActiveRecord::Migration[5.0]
  def change
    create_table :staff do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :email
      t.string :fax
      t.boolean :is_tech
      t.string :name
      t.text :notes
      t.string :phone

      t.timestamps
    end
  end
end
