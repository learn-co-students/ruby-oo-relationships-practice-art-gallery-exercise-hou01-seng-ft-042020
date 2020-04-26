require_relative '../config/environment.rb'


a1 = Artist.new("Mike",3)
a2 = Artist.new("Leo",7)
# a3 = Artist.new("Don",11)
# a4 = Artist.new("Raphael",8)

# p1 = Painting.new("Earth", 300)
# p2 = Painting.new("Wind", 200)
# p3 = Painting.new("Fire", 600)
# p4 = Painting.new("Water", 500)

g1 = Gallery.new("LACMA","LA")
g2 = Gallery.new("HMFA","HTX")

p1 = a1.create_painting("earth",300,g1)
a1.painting = p1
g1.artist= a1
#g2.artist = a3

binding.pry

puts "Bob Ross rules."
