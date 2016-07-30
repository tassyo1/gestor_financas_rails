require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { create(:category) }

  describe 'associations' do  
    it { is_expected.to belong_to(:frequency) }
    it { is_expected.to have_many(:movements) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }

    it { is_expected.to validate_presence_of(:type_category) }
    it { is_expected.to validate_presence_of(:frequency_id) }
    it { is_expected.to validate_presence_of(:date_scheduled) }

    it { is_expected.to validate_presence_of(:value)}
    it { is_expected.to validate_numericality_of(:value)}

  end
end
