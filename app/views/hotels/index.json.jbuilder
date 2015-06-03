json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :image, :address, :latitude, :longitude, :phone, :rooms, :price
  json.url hotel_url(hotel, format: :json)
end
