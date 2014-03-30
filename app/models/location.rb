class Location < ActiveRecord::Base
    has_many :visits
	has_many :exchanges, through: :visits
    
	validates_presence_of :name
end
