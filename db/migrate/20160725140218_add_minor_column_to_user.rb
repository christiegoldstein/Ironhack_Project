class AddMinorColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :minor, :string
  end
end
