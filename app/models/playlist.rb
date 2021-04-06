class Playlist < ApplicationRecord
    has_many :songs
    has_many :reviews
end
