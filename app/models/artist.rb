class Artist < ApplicationRecord
    has_many :jams 
    has_many :instruments, through: :jams 

    validates :name, presence: true
    validates :title, uniqueness: true 

    def title_and_name 
        "#{self.name} - #{self.title}"
    end 
end
