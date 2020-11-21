# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    description { FFaker::Lorem.paragraph(1) }
    date        { FFaker::Time.date }
  end
end
