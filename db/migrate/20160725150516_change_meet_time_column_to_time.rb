class ChangeMeetTimeColumnToTime < ActiveRecord::Migration[5.0]
  def change
  	remove_column :study_groups, :meet_time
  	add_column :study_groups, :meet_time, :datetime
  end
end
