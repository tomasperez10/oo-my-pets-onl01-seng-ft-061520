class Owner
  attr_reader :species, :name
  attr_accessor :pets, :dog, :cat, :mood

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(name)
    @species = species
    @@all << self
    @name = name
  end
  
  def name
    @name
  end
  
  def species
    
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @@pets
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s) and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = 'nervous'
      end
      arr.clear
    end
  end
end