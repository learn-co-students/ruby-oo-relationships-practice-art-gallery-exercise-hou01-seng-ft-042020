class Painting

  attr_accessor :artist, :gallery, :price
  attr_reader :title

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @artist = artist
    @gallery = gallery
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.reduce(0) {|sum, painting| sum + painting.price}
  end

end
