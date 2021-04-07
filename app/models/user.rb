class User < ApplicationRecord
    has_secure_password
    has_many :playlist
    has_many :reviews
end
