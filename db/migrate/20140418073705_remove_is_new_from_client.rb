class RemoveIsNewFromClient < ActiveRecord::Migration
  def change
    remove_column :clients, :is_new, :boolean
  end
end
