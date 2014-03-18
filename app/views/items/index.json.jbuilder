json.items @items do |item|
  json.extract! item, :id, :name, :description, :image, :price
end