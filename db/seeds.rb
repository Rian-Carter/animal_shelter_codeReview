class Seed

  def self.begin
    seed = Seed.new
    seed.create_animals
  end

  def create_animals
    100.times do |i|
      animal = Animal.create!(
        species: "Dog",
        breed: Faker::Creature::Dog.breed,
        age: Faker::Number.within(range: 1..13),
        name: Faker::Creature::Dog.name,
        gender: Faker::Gender.binary_type
      )
      puts "Dog #{i} created"
    end

    100.times do |i|
      animal = Animal.create!(
        species: "Cat",
        breed: Faker::Creature::Cat.breed,
        age: Faker::Number.within(range: 1..13),
        name: Faker::Creature::Cat.name,
        gender: Faker::Gender.binary_type
      )
      puts "Cat #{i} created"
    end
  end
end

Seed.begin