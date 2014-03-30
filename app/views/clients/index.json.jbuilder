json.array!(@clients) do |client|
  json.extract! client, :id, :code, :has_old_code, :birth_date, :race, :register_date, :register_location_name, :new, :gender, :how_did_you_hear, :veterancy, :neighborhood, :hiv_screen, :hiv_result, :hep_b_screen, :hep_b_result, :hep_c_screen, :hep_c_result
  json.url client_url(client, format: :json)
end
