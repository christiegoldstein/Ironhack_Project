class AddNameColumnToStudyGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :study_groups, :name, :string
  end
end
