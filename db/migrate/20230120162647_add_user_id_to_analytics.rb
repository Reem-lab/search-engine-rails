class AddUserIdToAnalytics < ActiveRecord::Migration[7.0]
  def change
    add_column :analytics, :user_id, :integer
  end
end
