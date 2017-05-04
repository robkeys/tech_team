class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :is_portable_device
      t.string :size_modifier
    end
  end
end
