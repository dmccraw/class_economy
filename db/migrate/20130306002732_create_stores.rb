class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :group
      t.string :name
      t.text :description
      t.boolean :approved

      t.timestamps
    end
    add_index :stores, :group_id
  end
end
