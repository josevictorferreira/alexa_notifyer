# frozen_string_literal: true

require 'rails_helper'

describe Event, type: :model do
  subject(:event) { build(:event) }

  context 'with validations' do
    it { is_expected.to validate_presence_of(:description) }
  end
end
