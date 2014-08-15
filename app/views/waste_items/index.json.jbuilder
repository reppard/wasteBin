json.array!(@waste_items) do |waste_item|
  json.extract! waste_item, :id, :content
  json.url waste_item_url(waste_item, format: :json)
end
