class CreateStaff < ActiveRecord::Migration[5.0]
  def change
    create_table :staff do |t|
      t.boolean :is_tech
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
