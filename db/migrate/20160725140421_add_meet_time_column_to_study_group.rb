class AddMeetTimeColumnToStudyGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :meet_time, :string
  end
end
