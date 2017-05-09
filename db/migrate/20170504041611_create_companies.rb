class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :customer_number
      t.string :name
      t.string :rep_name_first
      t.string :rep_name_last
      t.text :notes

      t.timestamps
    end
  end
end
