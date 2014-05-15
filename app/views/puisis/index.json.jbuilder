json.array!(@puisis) do |puisi|
  json.extract! puisi, :id, :title, :puisi_type, :puisi_tema, :puisi_for, :puisi_con
  json.url puisi_url(puisi, format: :json)
end
