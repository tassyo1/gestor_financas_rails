require 'rails_helper'

RSpec.describe Movement, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:category) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:balance) }
    it { is_expected.to validate_numericality_of(:balance) }

    it { is_expected.to validate_presence_of(:date_launched) }

    it { is_expected.to validate_presence_of(:category_id) }
  end
end
