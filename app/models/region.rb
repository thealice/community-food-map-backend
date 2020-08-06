class Region < ApplicationRecord
    has_many :locations
    has_many :food_sources, through: :locations
end
