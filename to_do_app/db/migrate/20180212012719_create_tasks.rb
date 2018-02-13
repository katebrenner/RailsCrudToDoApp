class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.date :complete_by
      # links the 2 tables
      t.integer :priority_id, index: true

      t.timestamps
    end
  end
end
