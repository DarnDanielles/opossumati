json.array!(@questions) do |question|
  json.extract! question, :id, :survey_id, :question_type, :description, :required
  json.url question_url(question, format: :json)
end
