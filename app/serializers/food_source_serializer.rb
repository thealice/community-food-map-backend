class FoodSourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :notes, :available, :location_id
  
  attribute :user do | food |
    {
      id: food.user.id,
      name: food.user.name
    }
    
  end
end
