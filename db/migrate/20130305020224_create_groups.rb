class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :user_id
      t.string :name

      t.timestamps
    end
    add_index :groups, :user_id_id
  end
end
