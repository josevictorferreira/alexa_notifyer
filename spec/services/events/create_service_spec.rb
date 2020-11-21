# frozen_string_literal: true

require 'rails_helper'

describe Events::CreateService do
  subject(:service) { described_class.new(params) }

  let(:params) { { description: description, date: date } }
  let(:description) { FFaker::Lorem.paragraph(1) }
  let(:date) { FFaker::Time.date }
end
