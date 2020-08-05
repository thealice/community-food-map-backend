class Location < ApplicationRecord
    belongs_to :region
    belongs_to :user
end
