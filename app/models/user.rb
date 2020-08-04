class User < ApplicationRecord
    belongs_to :region
    has_secure_password
end
