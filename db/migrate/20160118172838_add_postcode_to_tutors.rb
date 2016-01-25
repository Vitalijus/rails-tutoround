class AddPostcodeToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :postcode, :string
  end
end
