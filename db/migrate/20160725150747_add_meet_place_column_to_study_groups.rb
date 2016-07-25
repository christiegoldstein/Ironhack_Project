class AddMeetPlaceColumnToStudyGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :meet_place, :string
  end
end
