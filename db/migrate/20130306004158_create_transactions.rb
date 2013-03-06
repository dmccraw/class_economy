class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :from_account_id
      t.references :to_account_id
      t.references :group
      t.float :amount
      t.string :description
      t.datetime :occurred_on
      t.references :user

      t.timestamps
    end
    add_index :transactions, :from_account_id_id
    add_index :transactions, :to_account_id_id
    add_index :transactions, :group_id
    add_index :transactions, :user_id
  end
end
