class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.integer :vendor_id
      t.integer :manufacturer_id
      t.integer :maintenance_id
      t.integer :site_id

      t.integer :cost
      t.date :disposal_date
      t.string :disposal_method
      t.text :disposal_reason
      t.string :domain
      t.string :domain_name
      t.string :ipv4
      t.string :ipv2
      t.string :mac_address
      t.string :model
      t.text :note
      t.string :serial
      t.integer :size
      t.date :warranty_date
      t.string :warranty_email
      t.string :warranty_num
      t.string :warranty_provider
      t.string :warranty_phone

      t.timestamps
    end
  end
end
