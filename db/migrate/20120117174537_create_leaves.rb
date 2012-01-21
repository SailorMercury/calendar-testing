class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :reason
      t.date :start_date
      t.date :end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
