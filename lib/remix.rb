class Remix < ActiveRecord::Base   
    belongs_to :artist
    belongs_to :ogsong
end