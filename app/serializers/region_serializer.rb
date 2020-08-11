class RegionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :lat, :lng, :zoom, :locations, :food_sources
end
