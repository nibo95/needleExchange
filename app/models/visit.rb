class Visit < ActiveRecord::Base
    
	belongs_to :client
	has_one :exchange
	belongs_to :location
	
	validates :exchange_id, presence: true, numericality: { greater_than: 0, only_integer: true }
	validates :location_id, presence: true, numericality: { greater_than: 0, only_integer: true }
	validates :client_id, presence: true, numericality: { greater_than: 0, only_integer: true }
	validates_date :visit_time, :on_or_before => Date.today
    
	scope :chronological, -> { order('visit_time') }

	scope :by_client, -> (client_id){ where("client_id = ?", client_id) }
	scope :by_location, -> (location_id){ where("location_id = ?", location_id) }
end
