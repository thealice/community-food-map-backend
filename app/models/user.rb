class User < ApplicationRecord
    belongs_to :region
    has_many :food_sources
    
    has_secure_password
end
