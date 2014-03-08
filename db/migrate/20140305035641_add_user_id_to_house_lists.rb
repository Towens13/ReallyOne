class AddUserIdToHouseLists < ActiveRecord::Migration
  def change
  	add_column :house_lists, :user_id, :integer
  	add_index :house_lists, :user_id
  	remove_column :house_lists, :name
  end
end
