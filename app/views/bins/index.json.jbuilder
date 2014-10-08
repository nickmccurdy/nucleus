json.array!(@bins) do |bin|
  json.extract! bin, :id, :title, :description, :body
  json.url bin_url(bin, format: :json)
end
