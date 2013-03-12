class AddUserColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :String
    add_column :users, :name, :String
  end
end
