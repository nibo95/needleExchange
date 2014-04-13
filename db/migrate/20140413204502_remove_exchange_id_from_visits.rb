class RemoveExchangeIdFromVisits < ActiveRecord::Migration
  def change
  	remove_column :visits, :exchange_id, :integer
  end
end
