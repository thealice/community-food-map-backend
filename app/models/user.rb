class User < ApplicationRecord
    has_many :food_sources

    has_secure_password

    validates_presence_of :email, uniqueness: true
end
