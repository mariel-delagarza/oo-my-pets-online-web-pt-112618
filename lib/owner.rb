class Owner
  attr_reader :species
  attr_accessor :name, :pets

  OWNERS = []

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.count
    gets "Reset the owners? y/n"
    if y
      @@count.clear
    end
  end

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:cat => [], :dog => [], :fish => []}
  end

  def say_species
    puts self.species
  end

  def buy_fish
    @pets[:fish] << Fish.new
  end

  def buy_cat
    @pets[:cat] << Cat.new
  end

  def buy_dog
    @pets[:dog] << Dog.new
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
