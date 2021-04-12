# frozen_string_literal: true

# spec/factories/todos.rb
FactoryBot.define do
  factory :todo do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(digits: 10) }
  end
end
