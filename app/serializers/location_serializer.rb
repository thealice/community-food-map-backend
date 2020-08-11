class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes, :lat, :lng, :zoom, :street, :city, :state, :zipcode, :food_sources

end
