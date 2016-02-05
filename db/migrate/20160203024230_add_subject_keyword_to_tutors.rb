class AddSubjectKeywordToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :subject_tutor, :string
  end
end
