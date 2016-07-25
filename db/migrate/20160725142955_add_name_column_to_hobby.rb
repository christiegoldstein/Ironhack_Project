class AddNameColumnToHobby < ActiveRecord::Migration[5.0]
  def change
    add_column :hobbies, :name, :string
  end
end
