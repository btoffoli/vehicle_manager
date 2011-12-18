class AddForeignKeyRelashionships < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      add
      t.reference :account
    end
    add_index :vehicles, :account_id
  end
end
