FactoryBot.define do
  factory(:animal) do
    species {"Dog"}
    breed {Faker::Creature::Dog.breed}
    age {Faker::Number::within(range: 1..13)}
    name {Faker::Creature::Dog.name}
    gender {Faker::Gender.binary_type}
  end
end