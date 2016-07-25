class ChangeMeetTimeColumnToTime < ActiveRecord::Migration[5.0]
  def change
  	change_column :study_groups, :meet_time, :datetime
  end
end
