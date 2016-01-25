class AddTownAndCountyAndMaritalStatusAndNationalityAndMobilePhoneAndHomePhoneAndWorkPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :town, :string
    add_column :users, :county, :string
    add_column :users, :marital_status, :string
    add_column :users, :nationality, :string
    add_column :users, :mobile_phone, :string
    add_column :users, :home_phone, :string
    add_column :users, :work_phone, :string
  end
end
