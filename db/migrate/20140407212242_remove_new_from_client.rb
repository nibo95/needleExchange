class RemoveNewFromClient < ActiveRecord::Migration
  def change
    remove_column :clients, :new, :boolean
  end
end
