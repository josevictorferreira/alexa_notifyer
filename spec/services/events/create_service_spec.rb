# frozen_string_literal: true

require 'rails_helper'

describe Events::CreateService do
  subject(:service) { described_class.new(params) }

  let(:params) { { description: description, date: date } }
  let(:description) { FFaker::Lorem.paragraph(1) }
  let(:date) { FFaker::Time.date }

  context 'when success' do
    let(:service_perform) { service.perform }

    it { expect(service_perform).to be_a_success }
    it { expect(service_perform.event.description).to eq(description) }
    it { expect(service_perform.event.date).to eq(date) }
    it { expect { service_perform }.to change(Event, :count).by(1) }
  end
end
