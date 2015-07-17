json.array!(@maggiewus) do |maggiewu|
  json.extract! maggiewu, :id, :name
  json.url maggiewu_url(maggiewu, format: :json)
end
