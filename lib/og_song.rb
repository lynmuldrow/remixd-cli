class OGSong < ActiveRecord::Base
    has_many :remixes
    has_many :artists, through: :remixes
end