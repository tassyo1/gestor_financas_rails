require 'rails_helper'

RSpec.describe Category, type: :model do

  describe 'associations' do  
    it { should belong_to(:frequency) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:frequency_id) }
    it { should validate_presence_of(:date_scheduled) }
    it { should validate_presence_of(:value)}
  end
end
