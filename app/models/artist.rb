class Artist
  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self 
  end

  def self.all
    @@all
  end 

  def paintings
    Painting.all.select {|painting| painting.artist == self }
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end 

  def cities
    galleries.map {|gallery| gallery.city}
  end 

  def self.total_experience
    total = 0
    all.map {|artist| total += artist.years_experience}
    total 
  end 

  def self.most_prolific
    most_prolific_artist = all[0]
    all.map do |artist| 
     if  artist.paintings_per_year > most_prolific_artist.paintings_per_year
      most_prolific_artist = self 
     end
    end 
  end 

  def paintings_per_year
    paintings.size/years_experience
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

end
