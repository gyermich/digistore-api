json.item @items do |item|
  json.extract! item, :id, :name, :description, :image, :price
end