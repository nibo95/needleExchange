class Client < ActiveRecord::Base
    has_many :visits
	has_many :exchanges, through: :visits
    
	validates_presence_of :code
	validates_presence_of :has_old_code
	validates_date :birth_date
	validates_date :register_date
	validates_presence_of :register_location_name
	validates_presence_of :gender
	validates_format_of :gender, with: /\A[MFT]\z/, message: "Please select valid gender option"
	validates_presence_of :veterancy
	validates_presence_of :is_new
	validates_presence_of :race
	validates_presence_of :neighborhood
	validates_presence_of :hiv_screen
	validates_presence_of :hiv_result
	validates_presence_of :hep_b_screen
	validates_presence_of :hep_b_result
	validates_presence_of :hep_c_screen
	validates_presence_of :hep_c_result
    
	scope :all_new, -> { where('is_new = ?', true) }
	scope :alphabetical, -> { order('code') }
	scope :dateadded, -> { order('register_date') }
	scope :age, -> { order('age') }
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
	
	def age
 		age = Date.today.year - birth_date.year + 1
    	age -= 1 if Date.today < birth_date + age.years #for days before birthday
 		return age
 	end

 	def gennewcode
 		puts "Enter Old code"
 		old_code = gets.chomp
 		puts "Enter first two letters of your firstname"
 		fn = gets.chomp
 		return old_code + fn
 	end
end
