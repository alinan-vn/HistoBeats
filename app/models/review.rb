class Review < ApplicationRecord
    belongs_to :user
    belongs_to :song

    validates :rating, presence: true
    validates :comment, presence: true
    validates :user_id, presence: true
    validates :song_id, presence: true

end