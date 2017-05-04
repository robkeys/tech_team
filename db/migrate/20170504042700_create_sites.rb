class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :admin
      t.string :name
      t.string :fax
      t.string :phone

      t.timestamps
    end
  end
end
