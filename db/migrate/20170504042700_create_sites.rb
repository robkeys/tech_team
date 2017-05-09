class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.integer :parent_id
      t.string :name

      t.timestamps
    end
  end
end
