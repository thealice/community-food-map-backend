class RegionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :lat, :lng, :zoom
end
