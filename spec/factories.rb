FactoryBot.define do
  factory(:pet) do
    name {Faker::Creature::Dog.name}
    species {'Dog'}
  end
end