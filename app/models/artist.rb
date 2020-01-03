class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, through: :songs
    has_many :reviews, through: :songs

    has_secure_password

    validates :name, {presence: true, uniqueness: true}
    validates :year, {presence: true}
end