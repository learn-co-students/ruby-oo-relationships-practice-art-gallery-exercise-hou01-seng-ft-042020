class Artist

  attr_reader :name, :years_experience
  attr_accessor :painting, :gallery

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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    #Gallery.all.select {|gallery| gallery.artist == self}
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    Artist.all.sum {|total| total.years_experience}
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,gallery,self)
  end

end
