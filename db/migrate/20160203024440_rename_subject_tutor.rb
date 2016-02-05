class RenameSubjectTutor < ActiveRecord::Migration
  def change
  	rename_column :tutors, :subject_tutor, :subject_keyword
  end
end
