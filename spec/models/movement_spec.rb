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
    context 'último movimento tem balance nulo' do
      let(:mov_nil) { build(:movement_nil) }
      it 'deve utilizar zero para o cálculo ' do
        mov_nil.update_balances()
        expect(mov_nil.balance).to eq(-1.5)
      end
    end

    context 'último movimento não nulo' do
      let(:mov_r) { create(:movement_receita) }
      let(:mov_d) { create(:movement_despesa) }

      it 'aumenta o saldo do movimento(receita)' do
        mov_r.update_balances()
        expect(mov_r.balance).to eq(3.0)
      end
      
      it 'diminui o saldo do movimento(despesa)' do
        mov_d.update_balances()
        expect(mov_d.balance).to eq(0.0)
      end
    end
  end
  
  describe ".movement_schedule" do
    context 'movimentos eventuais' do
      let(:cat_today) { build(:category_today) }
      let(:category) { build(:category) }

      it 'deve inserir movimentos com data inferior a hoje' do
        category.save
        Movement.movement_schedule
        expect(Movement.find_by(category_id: category.id)).not_to be_nil
      end

      it 'deve inserir movimentos com data igual a hoje' do
        cat_today.save
        Movement.movement_schedule
        
        expect(Movement.find_by(category_id: cat_today.id)).not_to be_nil

      end
    end

    context 'movimentos frequentes' do
      
    end
  end
end
