class RemoveSomeColumnsFromTutors < ActiveRecord::Migration
  def change
  	remove_column :tutors, :name
  	remove_column :tutors, :surname
  	remove_column :tutors, :latitude
  	remove_column :tutors, :longitude
  	remove_column :tutors, :postcode
  	remove_column :tutors, :house_number
  	remove_column :tutors, :street
  	remove_column :tutors, :city
  	remove_column :tutors, :state
  	remove_column :tutors, :avatar
  	remove_column :tutors, :country
  	remove_column :tutors, :about_me
  	remove_column :tutors, :qualification
  	remove_column :tutors, :availability
  	remove_column :tutors, :experience
  end
end
