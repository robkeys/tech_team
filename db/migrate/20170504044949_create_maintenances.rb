class CreateMaintenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances do |t|
      t.text :notes
      t.string :part
      t.string :part_serial
      t.string :tech
      t.string :type

      t.timestamps
    end
  end
end
