# frozen_string_literal: true

module Events
  class CreateService < CreateModelService
    def model_key
      :event
    end
  end
end
