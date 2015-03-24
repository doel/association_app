class CreateAccounts < ActiveRecord::Migration
  def change
  	drop_table :accounts
    create_table :accounts do |t|
      t.integer :supplier_id
      t.string :name

      t.timestamps null: false
    end
  end
end
