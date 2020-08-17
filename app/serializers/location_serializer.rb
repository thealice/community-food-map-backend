class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :notes, :lat, :lng, :zoom, :street, :city, :state, :zipcode, :food_sources, :user_id

end
