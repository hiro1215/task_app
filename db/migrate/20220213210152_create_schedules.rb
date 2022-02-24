class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.time :startdate
      t.time :enddate
      t.boolean :allday
      t.string :introduction

      t.timestamps
    end
  end
end
