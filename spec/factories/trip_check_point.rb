FactoryBot.define do
  factory :trip_check_point do
    speed {Faker::Number.number(3)}
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
