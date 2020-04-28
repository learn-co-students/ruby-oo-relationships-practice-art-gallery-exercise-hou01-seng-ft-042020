require_relative '../config/environment.rb'

artist_1 = Artist.new("Cole", 10)
artist_2 = Artist.new("Yellow", 1)
artist_3 = Artist.new("Stacy", 5)
artist_4 = Artist.new("Maria", 7)

gallery_1 = Gallery.new("Flatiron", "Houston")
gallery_2 = Gallery.new("Meme", "San Francisco")
gallery_3 = Gallery.new("Art Gals", "New York")

painting_1 = Painting.new("new age", 1000000, artist_1, gallery_1)
painting_2 = Painting.new("SpongeBob", 9000000, artist_1, gallery_1)
painting_3 = Painting.new("Squids", 10000, artist_2, gallery_3)



binding.pry

puts "Bob Ross rules."
