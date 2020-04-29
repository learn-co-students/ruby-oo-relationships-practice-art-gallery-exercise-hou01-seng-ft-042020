require_relative '../config/environment.rb'

gallery1 = Gallery.new("Bisong Art Gallery", "Houston")
gallery2 = Gallery.new("Jack Rabbit Gallery", "Houston")
gallery3 = Gallery.new("Grey Art Gallery", "New York")

artist1 = Artist.new("Artist1", 5)
artist2 = Artist.new("Artist2", 15)
artist3 = Artist.new("Artist3", 25)
artist4 = Artist.new("Artist4", 1)

painting1 = Painting.new("title1", 1500, artist2, gallery1)
painting2 = Painting.new("title2", 500, artist1, gallery1)
painting3 = Painting.new("title3", 15000, artist3, gallery2)
painting4 = Painting.new("title4", 100, artist1, gallery3)
painting5 = Painting.new("title5", 50, artist4, gallery2)

binding.pry

puts "Bob Ross rules."
