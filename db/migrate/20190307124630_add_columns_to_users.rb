class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :wins, :integers
    add_column :users, :losses, :integers
  end
end
