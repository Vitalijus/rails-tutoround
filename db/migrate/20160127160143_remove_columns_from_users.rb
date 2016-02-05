class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :house_number
  	remove_column :users, :house_name
  	remove_column :users, :flat_number
  	remove_column :users, :address_line_two
  	remove_column :users, :county
  	remove_column :users, :marital_status
  	remove_column :users, :nationality
  	remove_column :users, :home_phone
  	remove_column :users, :work_phone
  end
end
