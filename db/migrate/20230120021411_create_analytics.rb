class CreateAnalytics < ActiveRecord::Migration[7.0]
  def change
    create_table :analytics do |t|
      t.string :event
      t.boolean :valid

      t.timestamps
    end
  end
end
