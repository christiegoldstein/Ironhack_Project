class AddCourseIdColumnToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :course_id, :integer
  end
end
