class Exchange < ActiveRecord::Base
    
    belongs_to :visit
    belongs_to :user
    
	validates_numericality_of :ultrafines, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :halfs, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :pogos, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :blues, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :one_qt, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :two_qt, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :three_gal, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :alcohol_whipes, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :cookers, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :cottons, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :ties, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :bleach, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :condoms, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :ascorbic_acid, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :pieces_of_lit, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :narcan, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :secondary_exchange, :only_integer => true, :message => "only integer values are permitted"
    

end
