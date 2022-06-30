FactoryBot.define do
  factory(:dog) do
    name {Faker::Creature::Dog.name}
    species {'Dog'}
  end
  factory(:cat) do
    name {Faker::Creature::Cat.name}
    species {'Cat'}
  end
end