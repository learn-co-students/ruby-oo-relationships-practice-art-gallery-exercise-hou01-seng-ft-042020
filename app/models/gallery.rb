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
    Painting.all.select {|paintings| paintings.gallery == self}
  end

  def artists
    paintings.map {|paintings| paintings.artist}.uniq
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    paintings.map {|paintings| paintings.price}.max
  end

end
