require_relative '../config/environment.rb'


a1 = Artist.new("Bob", 500)
a2 = Artist.new("Bobby", 2)
a3 = Artist.new("Bobbini", 310)
a4 = Artist.new("Bobster", 941)

g1 = Gallery.new("LA Gal", "LA")
g2 = Gallery.new("TX Gal", "TX")
g3 = Gallery.new("MD Gal", "MD")


p1 = Painting.new("Title1", 10325, g1, a1)
p2 = Painting.new("Title2", 41325, g2, a4)
p3 = Painting.new("Title3", 31325, g3, a2)
p4 = Painting.new("Title4", 61332, g1, a2)
p5 = Painting.new("Title5", 61325, g2, a3)
p6 = Painting.new("Title6", 98325, g2, a1)

binding.pry

puts "Bob Ross rules."
