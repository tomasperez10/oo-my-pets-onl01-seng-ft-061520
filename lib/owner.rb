class Owner
  attr_reader :species, :name
  attr_accessor :pets, :dog, :cat, :mood

  @@all = []

  def initialize(name)
    @species = species
    @@all << self
    @name = name
  end
  
  def name
    @name
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def species
    @species = "human"
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

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    Cat.all.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood = 'happy'
    end
  end

  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end

  def sell_pets
    Cat.all.each do |cat|
        cat.mood = 'nervous'
        cat.owner = nil
      end
    
    Dog.all.each do |dog|
        dog.mood = 'nervous'
        dog.owner = nil
      end
  end
end