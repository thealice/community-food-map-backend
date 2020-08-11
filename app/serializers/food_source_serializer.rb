class FoodSourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes, :available, :location_id, :user_id
end
