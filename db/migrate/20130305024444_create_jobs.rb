class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user
      t.string :title
      t.string :description
      t.float :salary
      t.references :group

      t.timestamps
    end
    add_index :jobs, :user_id
    add_index :jobs, :group_id
  end
end
