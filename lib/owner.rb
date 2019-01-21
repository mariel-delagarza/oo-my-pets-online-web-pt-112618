class Owner
  attr_reader :species
  attr_accessor :name, :pets

  OWNERS = []

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.count
  end

  def self.reset_all 
    OWNERS.clear 
  end 

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{species}"
  end

  def buy_fish
    @pets[:fishes] << Fish.new
  end

  def buy_cat
    @pets[:cats] << Cat.new
  end

  def buy_dog
    @pets[:dogs] << Dog.new
  end

  def walk_dogs
    Dog.mood = "happy"
  end

  def play_with_cats
    Cat.mood = "happy"
  end

  def feed_fish
    Fish.mood = "happy"
  end

  def sell_pets
    @pets.mood = "nervous"
    @pets.clear
  end

  def list_pets
    pets.each do |pet|
      puts pet
    end
  end


end
