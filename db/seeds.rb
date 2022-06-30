class Seed

  def self.begin
    Pet.destroy_all
    seed = Seed.new
    seed.generate_pets
  end

  def generate_pets
    20.times do |i|
      pet = Pet.create!(
        name: Faker::Creature::Dog.name,
        species: "Dog"
      )
      puts "Pet #{i}: #{pet.name} is a #{pet.species}."
    end
    20.times do |i|
      pet = Pet.create!(
        name: Faker::Creature::Cat.name,
        species: "Cat"
      )
      puts "Pet #{i}: #{pet.name} is a #{pet.species}."
    end
  end
end

Seed.begin