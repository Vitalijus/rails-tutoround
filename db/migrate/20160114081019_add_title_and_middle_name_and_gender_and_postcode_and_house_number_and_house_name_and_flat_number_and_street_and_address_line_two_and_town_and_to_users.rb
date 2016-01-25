class AddTitleAndMiddleNameAndGenderAndPostcodeAndHouseNumberAndHouseNameAndFlatNumberAndStreetAndAddressLineTwoAndTownAndToUsers < ActiveRecord::Migration
  def change
    add_column :users, :title, :string
    add_column :users, :middle_name, :string
    add_column :users, :gender, :string
    add_column :users, :postcode, :string
    add_column :users, :house_number, :string
    add_column :users, :house_name, :string
    add_column :users, :flat_number, :string
    add_column :users, :street, :string
    add_column :users, :address_line_two, :string
  end
end
