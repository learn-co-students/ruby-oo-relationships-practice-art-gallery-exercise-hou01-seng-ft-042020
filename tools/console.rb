require_relative '../config/environment.rb'
require "pry"



# artist = (name, years_experience)
a1 = Artist.new("Nick", 10)
a2 = Artist.new("Brian", 5)
a3 = Artist.new("Alex", 18)
a4 = Artist.new("Kevin", 52)
a5 = Artist.new("Mike", 1)


# gallery = name, city)
g1 = Gallery.new("Art", "Houston")
g2 = Gallery.new("Sea", "Houston")
g3 = Gallery.new("History", "Buffalo")
g4 = Gallery.new("Music", "Buffalo")


#painting = (title, price, artist, gallery)
p1 = Painting.new("Hello World", 2100, a2, g3)
p1 = Painting.new("My Boat", 5000, a2, g2)
p1 = Painting.new("Guitar", 1200, a2, g4)
p1 = Painting.new("Untitled", 1000, a2, g3)
p1 = Painting.new("World's Fair", 2000, a1, g3)
p1 = Painting.new("Goo Goo Dolls", 500, a3, g4)


binding.pry

puts "Bob Ross rules."
