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
	validates_numericality_of :eight_gal, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"
	validates_numericality_of :bleach_bottle, :allow_nil=> false, :only_integer => true, :message => "only integer values are permitted"

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

	#validates_date :created_at, :on_or_before => Date.today
    #validates_date :updated_at, :on_or_before => Date.today
    
    
	scope :chronological, -> { order('created_at') } 
	scope :by_user, ->(user_id){ where("user_id = ?", user_id) }
    scope :aweekago, :on_or_before => 'aweekago' 
    scope :updatedtime, -> { order('updated_at') }

    #scoping for needles(more than 0)
    scope :ultrafines1m, -> { where('ultrafines > ?', 0) }
    scope :halfs1m, -> { where('halfs > ?', 0) }
    scope :pogos1m, -> { where('pogos > ?', 0) }
    scope :blues1m, -> { where('blues > ?', 0) }
    scope :one_qt1m, -> { where('one_qt > ?', 0) }
    scope :two_qt1m, -> { where('two_qt > ?', 0) }
    scope :three_gal1m, -> { where('three_gal > ?', 0) }
    scope :eight_gal1m, -> { where('eight_gal > ?', 0) }
    scope :bleach_bottle1m, -> { where('bleach_bottle > ?', 0) }

    #scoping for non-needles
    scope :alcohol_whipes1m, -> { where('alcohol_whipes > ?', 0) }
    scope :cookers1m, -> { where('cookers > ?', 0) }
    scope :cottons1m, -> { where('cottons > ?', 0) }
    scope :ties1m, -> { where('ties > ?', 0) }
    scope :bleach1m, -> { where('bleach > ?', 0) }
    scope :condoms1m, -> { where('condoms > ?', 0) }
    scope :ascorbic_acid1m, -> { where('ascorbic_acid > ?', 0) }
    scope :pieces_of_lit1m, -> { where('pieces_of_lit > ?', 0) }
    scope :narcan1m, -> { where('narcan > ?', 0) }
    #sec exchange
    scope :secondary_exchange1m, -> { where('secondary_exchange > ?', 0) }
    def aweekago
    	wkago = Date.today 
    	wkago -= 7
    	return wkago
    end

    def returned_needles
    	return 75*one_qt+100*two_qt+700*three_gal+1200*eight_gal+200*bleach_bottle
    end


# method for user(id) = name
# method 
end
