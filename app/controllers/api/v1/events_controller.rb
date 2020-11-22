# frozen_string_literal: true

module Api
  module V1
    class EventsController < ApplicationController
      def create
        create_event_service.perform!(event_params).yield_self do |result|
          if result.success?
            render json: result.event,
                   status: :created, serializer: EventSerializer
          else
            render json: { errors: result.details }, status: :unprocessable_entity
          end
        end
      end

      private

      def create_event_service
        Events::CreateService
      end

      def event_params
        params.require(:event).permit(:description, :date)
      end
    end
  end
end
