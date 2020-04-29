# Done Artist.all
# Done Returns an array of all the artists

# Done Artist#paintings
# Done Returns an array all the paintings by an artist

# Done Artist#galleries
# Done Returns an array of all the galleries that an artist has paintings in

# Done Artist#cities
# Done Return an array of all cities that an artist has paintings in

# Done Artist.total_experience
# Done Returns an integer that is the total years of experience of all artists

# Artist.most_prolific
# Returns an instance of the artist with the highest amount of paintings per year of experience.

# Done Artist#create_painting
# Done Given the arguments of title, price and gallery, creates a new painting belonging to that artist

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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    self.all.collect {|artist| artist.years_experience}.sum
  end

  def self.most_prolific #Returns an instance of the artist with the highest amount of paintings per year of experience.
    self.all.max_by do |artist|
      artist.paintings.count / artist.years_experience
    end
  end

  def create_painting (title, price, gallery)
    Painting.new(title, price, gallery, self)
  end
end
