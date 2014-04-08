class AddIsNewToClient < ActiveRecord::Migration
  def change
    add_column :clients, :is_new, :boolean
  end
end
