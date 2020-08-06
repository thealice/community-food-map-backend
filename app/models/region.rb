class Region < ApplicationRecord
    has_many :locations
    has_many :users
    has_many :food_sources
end
