json.array!(@lines) do |line|
  json.extract! line, :id, :seats_total, :departure_city, :departure_time, :arrival_city, :arrival_time
  json.url line_url(line, format: :json)
end
