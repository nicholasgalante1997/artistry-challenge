class Jam < ActiveRecord::Base 
    belongs_to :instrument
    belongs_to :artist 

   # def artist_name=(name)
     #   self.artist = Artist.find_or_create_by(name: name)
   # end 

   # def artist_name 
   #     self.artist ? self.artist.name : nil 
   # end 

   # def instrument_name=(ins_name)
   #     self.instrument = Instrument.find_or_create_by(name: ins_name)
 #   end 

#    def instrument_name
 #       self.instrument ? self.instrument.name : nil 
  #  end 

end 