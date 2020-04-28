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
    Painting.all.select do |p|
      p.artist == self
    end
  end

  def galleries 
    self.paintings.map do |p|
      p.gallery
    end
  end 

  def cities 
    self.galleries.map do |g|
      g.city
    end
  end

  def self.total_experience
    self.all.inject(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    # num of paintings / years of experience
    most_prolific = nil
    most_paintings_per_year = 0
    self.all.each do |artist|
      num_of_paintings = artist.paintings.length
      paintings_per_year = num_of_paintings / artist.years_experience 
      most_prolific = artist if paintings_per_year > most_paintings_per_year
    end 
    most_prolific
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 
  
end
