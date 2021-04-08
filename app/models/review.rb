class Review < ApplicationRecord
    belongs_to :playlist
    belongs_to :user 

    def self.array_to_json 
        self.all.map do |p|
            p.instance_to_json 
        end 
    end 

    def instance_to_json
        {
            id: self.id,
            rating: self.rating, 
            text: self.text,
            user: {
                id: self.user.id,
                username: self.user.username
            }, 
            playlist: {
                id: self.playlist.id
            }          
        }
    end 
end
