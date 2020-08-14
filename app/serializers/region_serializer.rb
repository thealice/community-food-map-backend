class RegionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :lat, :lng, :zoom, :locations, :food_sources
end
