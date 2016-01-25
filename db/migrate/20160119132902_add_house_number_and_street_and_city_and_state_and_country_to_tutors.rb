class AddHouseNumberAndStreetAndCityAndStateAndCountryToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :house_number, :string
    add_column :tutors, :street, :string
    add_column :tutors, :city, :string
    add_column :tutors, :state, :string
    add_column :tutors, :country, :string
  end
end
