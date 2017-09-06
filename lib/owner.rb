class Owner
  attr_reader :species
  attr_accessor :name

  @pets = []
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all=[]
  end

  def self.count
    @@all.length
  end

  def initialize(species)
    @species = species
    self.class.all << self
  end

  def species
    @species
  end

  def say_species
    puts "I am a #{self.species}."
  end

end
