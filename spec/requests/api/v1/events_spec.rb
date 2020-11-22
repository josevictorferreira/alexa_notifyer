# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'api/v1/events', type: :request do
  path '/api/v1/events' do
    post 'Creates a Event' do
      tags 'Events'
      consumes 'application/json'
      parameter name: :event, in: :body, schema: {
        type: :object,
        properties: {
          description: { type: :string },
          date: { type: :string, format: :'date-time' }
        }
      }

      response '201', 'event created' do
        let(:event) { { description: 'foo', date: DateTime.now.to_s } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:event) { { date: DateTime.now.to_s } }
        run_test!
      end
    end
  end
end
