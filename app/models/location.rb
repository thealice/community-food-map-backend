class Location < ApplicationRecord
    belongs_to :region
    belongs_to :user
    has_many :food_sources, dependent: :destroy
end
