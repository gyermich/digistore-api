json.items @items do |item|
  json.extract! item, :name, :description, :image, :price
end