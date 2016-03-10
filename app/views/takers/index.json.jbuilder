json.array!(@takers) do |taker|
  json.extract! taker, :id, :survey_id, :email
  json.url taker_url(taker, format: :json)
end
