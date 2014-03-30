class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.integer :visit_id
      t.integer :user_id
      t.integer :ultrafines
      t.integer :halfs
      t.integer :pogos
      t.integer :blues
      t.integer :one_qt
      t.integer :two_qt
      t.integer :three_gal
      t.integer :alcohol_whipes
      t.integer :cookers
      t.integer :cottons
      t.integer :ties
      t.integer :bleach
      t.integer :condoms
      t.integer :ascorbic_acid
      t.integer :pieces_of_lit
      t.integer :narcan
      t.integer :secondary_exchange
      t.integer :returned_needles

      t.timestamps
    end
  end
end
