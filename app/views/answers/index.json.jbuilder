json.array!(@answers) do |answer|
  json.extract! answer, :id, :question_id, :taker_id, :response
  json.url answer_url(answer, format: :json)
end
