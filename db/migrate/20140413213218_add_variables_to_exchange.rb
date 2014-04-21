class AddVariablesToExchange < ActiveRecord::Migration
  def change
    add_column :exchanges, :eight_gal, :integer
    add_column :exchanges, :bleach_bottle, :integer
  end
end
