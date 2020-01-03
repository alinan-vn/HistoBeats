class Song < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :artist
    belongs_to :genre

    validates :title, presence: true
    validates :artist_id, presence: true
    validates :genre_id, presence: true

    def song_video
        if self.link == '' or !self.link
            return "https://www.youtube.com/embed/dQw4w9WgXcQ"
        elsif self.link
            return self.link        
        end
    end
end