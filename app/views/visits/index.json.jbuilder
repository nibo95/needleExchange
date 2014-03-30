json.array!(@visits) do |visit|
  json.extract! visit, :id, :exchange_id, :location_id, :client_id, :visit_time
  json.url visit_url(visit, format: :json)
end
