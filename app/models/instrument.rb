class Instrument < ApplicationRecord
    has_many :jams 
    has_many :artists, through: :jams 
end
