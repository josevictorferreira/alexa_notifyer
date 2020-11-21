# frozen_string_literal: true

class Event < ApplicationRecord
  validates :description, presence: true
end
