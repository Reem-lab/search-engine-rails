class RemoveColumnFromAnalytics < ActiveRecord::Migration[7.0]
  def change
    remove_column :analytics, :valid
  end
end
