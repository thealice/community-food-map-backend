class User < ApplicationRecord
    has_many :food_sources

    has_secure_password
end
