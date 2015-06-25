class CreateFollowers < ActiveRecord::Migration
  def change
    create_join_table :groups, :users, table_name: :followings
  end
end
