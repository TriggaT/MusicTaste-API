class User < ApplicationRecord
    has_secure_password
    has_many :playlist
    has_many :reviews

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
                name: self.user.username
            }           
        }
    end 
end
