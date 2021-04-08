class Playlist < ApplicationRecord
    has_many :songs
    has_many :reviews
    belongs_to :user
end
