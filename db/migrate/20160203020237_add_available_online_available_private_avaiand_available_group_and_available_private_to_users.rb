class AddAvailableOnlineAvailablePrivateAvaiandAvailableGroupAndAvailablePrivateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :available_online, :boolean
    add_column :users, :available_private, :boolean
    add_column :users, :available_group, :boolean
  end
end
