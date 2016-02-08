class AddCityAndCountryAndLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :location, :string
  end
end
