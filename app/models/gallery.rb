class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    #returns an array of all the paintings in a gallery
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    #returns an array of all artists that have a painting in a gallery
    paintings.map {|painting| painting.artist}.uniq
  end

  def artist_names
    #returns an array of the names of all artists that have a painting in a gallery
    artists.map {|artist| artist.name}.uniq
  end

  def most_expensive_painting
    #returns an instance of the most expensive painting in a gallery
    paintings.sort {|a,b| a.price <=> b.price}
    return paintings[0]
  end

end
