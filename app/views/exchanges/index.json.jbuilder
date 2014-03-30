json.array!(@exchanges) do |exchange|
  json.extract! exchange, :id, :visit_id, :user_id, :ultrafines, :halfs, :pogos, :blues, :one_qt, :two_qt, :three_gal, :alcohol_whipes, :cookers, :cottons, :ties, :bleach, :condoms, :ascorbic_acid, :pieces_of_lit, :narcan, :secondary_exchange, :returned_needles
  json.url exchange_url(exchange, format: :json)
end
