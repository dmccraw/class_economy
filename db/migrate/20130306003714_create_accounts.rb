class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :owner, :polymorphic => true
      t.references :group
      t.float :balance

      t.timestamps
    end
    add_index :accounts, :owner_id
    add_index :accounts, :group_id
  end
end
