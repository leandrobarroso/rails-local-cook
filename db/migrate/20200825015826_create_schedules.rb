class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.references :cook, null: false, foreign_key: true
      t.date :appointment

      t.timestamps
    end
  end
end
