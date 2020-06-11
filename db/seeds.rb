#LINES 4 THRU 9 ARE VITAL TO PROPER FUNCTION


Artist.destroy_all
puts "Destroying Artists..."
Instrument.destroy_all 
puts "Destroying Instruments..."
Jam.destroy_all 
puts "Destroying Jam Sessions... :/ "


puts "Creating Artists..."
puts "Creating Instruments..."
puts "Creating Jam Sessions..."

mj = Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
sw = Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
ep = Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
wh = Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
bk = Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

g = Instrument.create(name: "Guitar", classification: "Strings")
v = Instrument.create(name: "Violin", classification: "Strings")
f = Instrument.create(name: "Flute", classification: "Woodwind")
x = Instrument.create(name: "Xylophone", classification: "Percussion")

Jam.create(artist_id: sw.id, instrument_id: f.id, length: 9)
Jam.create(artist_id: ep.id, instrument_id: g.id, length: 108)
Jam.create(artist_id: wh.id, instrument_id: x.id, length: 185)
Jam.create(artist_id: Artist.all.sample.id, instrument_id: Instrument.all.sample.id) #Greg Review Tip THIS IS THE BETTER WAY

20.times do #WOO LOOPS
    Jam.create(artist_id: Artist.all.sample.id, instrument_id: Instrument.all.sample.id)
end  


#OR YOU CAN DO IT THIS WAY AND ASSIGN THE WHOLE INSTANCE TO THE ATTRIBUTE ARTIST IF RELATIONSHIPS EXIST ALREADY
# Jam.create(artist: Artist.all.sample, instrument: Instrument.all.sample)
