class Location < ActiveRecord::Base
    has_many :visits
	has_many :exchanges, through: :visits
    
	validates_presence_of :name
	validates_presence_of :street
	validates_presence_of :state
	validates_presence_of :zip
	validates_presence_of :city

	scope :alphabetical, -> { order('name') }

	def address
		return street + '\n' + city + ', ' + state + ' ' + zip
	end
	
end
