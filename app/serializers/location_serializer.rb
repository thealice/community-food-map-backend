class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes, :lat, :lng, :zoom, :street, :city, :state, :zipcode, :food_sources, :user_id

  attributes :id do |location| 
    location.id.to_s
  end
end
