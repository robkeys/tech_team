class CreateContactJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_joins do |t|
      t.integer :contact_id
      t.references :contactable, polymorphic: true, index: true
    end
  end
end
