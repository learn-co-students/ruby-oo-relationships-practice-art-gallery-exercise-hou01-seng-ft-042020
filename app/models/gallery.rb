class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self 
  end

  def self.all
    @@all 

  end 

end
