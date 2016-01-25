class AddPricePerHourAndAvatarAndAboutMeAndQualificationAndAvailabilityAndExperienceAndTutoringTypeAndSubjectToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :price_per_hour, :string
    add_column :tutors, :avatar, :string
    add_column :tutors, :about_me, :string
    add_column :tutors, :qualification, :string
    add_column :tutors, :availability, :string
    add_column :tutors, :experience, :string
    add_column :tutors, :tutoring_type, :string
    add_column :tutors, :subject, :string
  end
end
