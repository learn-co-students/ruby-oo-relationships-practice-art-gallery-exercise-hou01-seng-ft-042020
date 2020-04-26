# require 'pry'
require_relative '../config/environment.rb'


basquiat = Artist.new("Jean-Michel Basquiat", 29)
marshall = Artist.new("Kerry James Marshall", 42)
wiley = Artist.new("Kehinde Wiley", 19)

Artist.all

theone = Gallery.new("The One", "Memphis")
heygal = Gallery.new("Hey Gal", "Brooklyn")

Gallery.all

untitled = Painting.new("Untitled", 4000, basquiat, heygal)
horn_players = Painting.new("Horn Players", 6000, basquiat, theone)
de_style = Painting.new("De Style", 2000, marshall, heygal)
obama = Painting.new("President Barack Obama", 1000, wiley, theone)

Painting.all 

basquiat.paintings
basquiat.galleries
basquiat.cities

Artist.total_experience
marshall.create_painting("The elegent", 5000, heygal)

Painting.total_price

theone.paintings
heygal.paintings
heygal.artists
theone.artists
heygal.artist_names
theone.artist_names

Artist.most_prolific

theone.most_expensive_painting

binding.pry

puts "Bob Ross rules."
