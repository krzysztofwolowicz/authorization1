class AddUserIdToConfrenzs < ActiveRecord::Migration[5.0]
  def change
    add_column :confrenzs, :user_id, :integer
    add_index :confrenzs, :user_id
  end
end
