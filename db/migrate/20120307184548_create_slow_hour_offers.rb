class CreateSlowHourOffers < ActiveRecord::Migration
  def change
    create_table :slow_hour_offers do |t|
      t.string :description
      t.string :start_time, :default => "00:00"
      t.string :end_time, :default => "00:00"
      t.boolean :monday, :default => false
      t.boolean :tuesday, :default => false
      t.boolean :wednesday, :default => false
      t.boolean :thursday, :default => false
      t.boolean :friday, :default => false
      t.boolean :saturday, :default => false
      t.boolean :sunday, :default => false

      t.timestamps
    end
  end
end
