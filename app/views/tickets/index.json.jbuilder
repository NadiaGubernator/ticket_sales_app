json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :line_id, :seat, :user_id, :bought
  json.url ticket_url(ticket, format: :json)
end
