class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paint| paint.artist == self}
  end

  def galleries
    paintings.map {|paint| paint.gallery}
  end

  def cities
    galleries.map {|gall| gall.city}
  end

  def self.total_experience
    self.all.reduce(0) {|sum, artist| sum + artist.years_experience}
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    new_paint = Painting.new(title, price, self, gallery)
    new_paint.gallery = gallery
  end

end
