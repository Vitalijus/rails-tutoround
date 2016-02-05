class AddExperienceInYearsAndSubjectDescriptionToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :experience_in_years, :string
    add_column :tutors, :subject_description, :text
  end
end
