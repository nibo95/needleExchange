FactoryGirl.define do
	factory :client do
		code
		has_old_code
		birth_date
		race
		register_date
		register_location_name
		is_new true
		gender
		how_did_you_hear
		veterancy
		neighborhood
		hiv_screen
		hiv_result
		hep_b_screen
		hep_b_result
		hep_c_screen
		hep_c_result
		created_at
		updated_at
	end
end