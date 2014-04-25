class AddRegisterLocationIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :register_location_id, :integer
  end
end
