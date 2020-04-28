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
    #returns an array of all the paintings by an artist
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    #returns an array of all the gallies that an artist has paintings in
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    #returns an array of all cities that an artist has paintings in
    galleries.map {|gallery| gallery.city}.uniq

  end

  def self.total_experience
    #returns an integer that is the total yeats of experience of all artists
    years = 0
    self.all.each {|artist| years += artist.years_experience}
    return years
  end

  def self.most_prolific
    #returns an instance of the artist with the highest amount of paintings per year of experience
      self.all.max {|artist| artist.paintings.count/artist.years_experience}
  end

  def create_painting(title, price, gallery)
    #given 3 arguments, creates a new painting belonging to that artist.
    Painting.new(title, price, self, gallery)
  end



end
