class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.integer :status
      t.text :notes
      t.references :client, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
