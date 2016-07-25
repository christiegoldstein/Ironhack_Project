class AddUserIdColumnToUserGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :user_groups, :user_id, :integer
  end
end
