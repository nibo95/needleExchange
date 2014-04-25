class Client < ActiveRecord::Base
    has_many :visits
	has_many :exchanges, through: :visits
    
	validates_presence_of :code
	validates_presence_of :has_old_code, allow_blank: true
	validates_date :birth_date
	validates_date :register_date
	validates_presence_of :register_location_id
	validates_presence_of :gender
	validates_format_of :gender, with: /\A[MFT]\z/, message: "Please select valid gender option"
	validates_presence_of :veterancy, allow_blank: true
	validates_presence_of :race
	validates_presence_of :neighborhood
	validates_presence_of :hiv_screen, allow_blank: true
	validates_presence_of :hiv_result, allow_blank: true
	validates_presence_of :hep_b_screen, allow_blank: true
	validates_presence_of :hep_b_result, allow_blank: true
	validates_presence_of :hep_c_screen, allow_blank: true
	validates_presence_of :hep_c_result, allow_blank: true
    
	scope :alphabetical, -> { order('code') }
	scope :dateadded, -> { order('register_date') }
	scope :age, -> { order('age') }
	scope :by_location, -> (location){ where('register_location_id = ?', location) }
	scope :neighborhood, ->(neighborhood) { where('neighborhood = ?', neighborhood)}
	scope :afamerican, -> { where('race = ?', 'AfAm') }
	scope :white, -> { where('race = ?', 'W') }
	scope :asian, -> { where('race = ?', 'A') }
	scope :latin, -> { where('race = ?', 'L') }
	scope :otherace, -> { where('race = ?', 'O') }
	scope :males, -> { where("gender = ?", 'M') }
	scope :females, -> { where("gender = ?", 'F') }
	scope :transgender, -> { where("gender = ?", 'T') }
	scope :veteran, -> { where('veterancy = ?', true) }
	scope :hiv, -> { where('hiv_screen = ?', true) }
	scope :hepc, -> { where('hep_c_screen = ?', true) }
	scope :hepb, -> { where('hep_b_screen = ?', true) }
	scope :hivpos, -> { where('hiv_result = ?', true) }
	scope :hepbpos, -> { where('hep_b_result = ?', true) }
	scope :hepcpos, -> { where('hep_c_result = ?', true) }
	scope :after_date, -> (afterdate){ where("register_date >= ?", afterdate) }
	scope :before_date, -> (beforedate){ where("register_date <= ?", beforedate) }
	
	def age
 		age = Date.today.year - birth_date.year + 1
    	age -= 1 if Date.today < birth_date + age.years #for days before birthday
 		return age
 	end

 	def old_code
 		return code.to(5)
 	end
end
