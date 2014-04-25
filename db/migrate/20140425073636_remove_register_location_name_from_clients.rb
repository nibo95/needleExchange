class RemoveRegisterLocationNameFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :register_location_name, :string
  end
end
