# Done Painting.all
# Done Returns an array of all the paintings

# Done Painting.total_price
# Done Returns an integer that is the total price of all paintings


class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.collect {|painting| painting.price}.sum
  end
end
