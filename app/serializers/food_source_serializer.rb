class FoodSourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes, :available, :location_id
  
  attribute :user do | food |
    {
      id: food.user.id,
      name: food.user.name
    }
    
  end
end
