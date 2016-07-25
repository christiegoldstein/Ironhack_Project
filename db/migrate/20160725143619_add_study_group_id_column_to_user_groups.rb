class AddStudyGroupIdColumnToUserGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :user_groups, :study_group_id, :integer
  end
end
