class Playlist < ApplicationRecord
    has_many :songs
    has_many :reviews
    belongs_to :user
    validates :name, uniqueness: true

    def self.array_to_json 
        self.all.map do |p|
            p.instance_to_json 
        end 
    end 

    def instance_to_json
        {
            id: self.id,
            name: self.name, 
            description: self.description,
            user: {
                id: self.user.id,
                username: self.user.username
            }           
        }
    end 

end
