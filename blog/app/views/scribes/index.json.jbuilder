json.array!(@scribes) do |scribe|
  json.extract! scribe, :id, :title, :body, :date
  json.url scribe_url(scribe, format: :json)
end
