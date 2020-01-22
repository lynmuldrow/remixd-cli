class Artist < ActiveRecord::Base
    has_many :remixes
    has_many :og_songs, through: :remixes
end