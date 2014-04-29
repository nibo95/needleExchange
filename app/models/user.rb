class User < ActiveRecord::Base
	has_secure_password

	has_many :exchanges

	validates_presence_of :role
	validates :email, presence: true, uniqueness: { case_sensitive: false}
	validates_presence_of :password, on: :create 
	validates_presence_of :password_confirmation, on: :create 
	validates_confirmation_of :password, message: "does not match"
	validates_presence_of :first_name
	validates_presence_of :last_name

	scope :alphabetical, -> { order('last_name') }

	def self.authenticate(email,password)
    	find_by_email(email).try(:authenticate, password)
  	end

  	def role?(authorized_role)
    	return false if role.nil?
    	role.to_sym == authorized_role
 	end

  	def name
  		last_name + ', ' + first_name
  	end

  	def proper_name
  		first_name + ' ' + last_name
  	end	
end
