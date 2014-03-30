class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :code
      t.boolean :has_old_code
      t.datetime :birth_date
      t.string :race
      t.datetime :register_date
      t.string :register_location_name
      t.boolean :new
      t.string :gender
      t.string :how_did_you_hear
      t.boolean :veterancy
      t.string :neighborhood
      t.boolean :hiv_screen
      t.boolean :hiv_result
      t.boolean :hep_b_screen
      t.boolean :hep_b_result
      t.boolean :hep_c_screen
      t.boolean :hep_c_result

      t.timestamps
    end
  end
end
