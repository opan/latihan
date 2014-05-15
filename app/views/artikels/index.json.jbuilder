json.array!(@artikels) do |artikel|
  json.extract! artikel, :id, :title, :ar_type, :ar_con
  json.url artikel_url(artikel, format: :json)
end
