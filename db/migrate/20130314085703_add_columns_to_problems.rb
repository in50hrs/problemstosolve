class AddColumnsToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :name, :string
    add_column :problems, :twitter_username, :string
    add_column :problems, :category, :string
  end
end
