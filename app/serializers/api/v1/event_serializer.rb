# frozen_string_literal: true

module Api
  module V1
    class EventSerializer < ApplicationSerializer
      attributes(:id, :description, :date)
    end
  end
end
