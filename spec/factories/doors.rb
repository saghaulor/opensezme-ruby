# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :door do
    name "Garage door"
    association :owner_id, factory: :user
    identifier OpenSSL::Random.hash
  end
end
