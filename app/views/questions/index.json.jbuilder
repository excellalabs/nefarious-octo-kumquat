json.array!(@questions) do |question|
  json.extract! question, :id, :text, :slug, :blurb, :answer
  json.url question_url(question, format: :json)
end
