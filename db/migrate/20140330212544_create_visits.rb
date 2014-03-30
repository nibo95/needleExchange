class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :exchange_id
      t.integer :location_id
      t.integer :client_id
      t.datetime :visit_time

      t.timestamps
    end
  end
end
