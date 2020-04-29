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
    Painting.all.select {|paintings| paintings.artist == self}
  end

  def galleries
    paintings.map {|paintings| paintings.gallery}.uniq
  end

  def cities
    galleries.map {|galleries| galleries.city}.uniq
  end

  def self.total_experience
    experience = @@all.map {|artists| artists.years_experience}
    experience.sum
  end

  def self.most_prolific
    @@all.max_by {|artists| artists.paintings.count / artists.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
