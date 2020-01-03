class User < ApplicationRecord
    has_secure_password

    validates :name, {presence: true, uniqueness: true }

    has_many :reviews
    has_many :songs, through: :reviews

    def display_bio
        if !self.user_bio
            return "This user has no bio... yet"
        elsif self.user_bio 
            return self.user_bio
        end
    end
end