class AddLatitudeAndLongitudeToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :latitude, :float
    add_column :tutors, :longitude, :float
  end
end
