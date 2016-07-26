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

  describe "#updates_balance" do
    context 'último movimento é nulo' do
      let(:mov_nil) { create(:movement_nil) }
      let(:mov) { create(:movement) }
      it 'deve retornar nil' do
      
      end
    end

    context 'último movimento não nulo' do
      let(:mov) { create(:movement) }
      it 'aumenta o saldo do movimento(receita)' do
        mov.update_balances()
        expect(mov.balance).to eq(3.0)
      end
      
      it 'diminui o saldo do movimento(despesa)' do
        mov.update_balances()
        expect(mov.balance).to eq(0.0)
      end
    end
  end
  
  describe "#movement_schedule" do
    
  end
end
