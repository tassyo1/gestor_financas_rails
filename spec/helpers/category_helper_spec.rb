require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CategoryHelper. For example:
#
# describe CategoryHelper do
#   describe "string concat do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CategoryHelper, type: :helper do
  describe "#format_data" do
    context 'locale = pt-BR' do
      before(:each) do
        I18n.locale =:"pt-BR"
      end
      
      it 'data não nula e inserindo = true' do
        expect(format_data("25/02/2016",true)).to eq("2016-02-25") 
      end
      it 'data não nula e insert = false' do
        expect(format_data("2016-02-25",false)).to eq("25/02/2016")
      end

      it 'parâmetro nulo' do
        expect(format_data(nil,nil)).to eq(nil)
      end
    end

    context 'locale = en' do
      before(:each) do
        I18n.locale = :en
      end

      it 'data não nula e insert = true' do
        expect(format_data("02/25/2016",true)).to eq("2016-02-25") 
      end

      it 'data não nula e insert = false' do
        expect(format_data("2016-02-25",false)).to eq("02/25/2016") 
      end

      it 'parâmetro nulo' do
        expect(format_data(nil,nil)).to eq(nil)
      end
    end
  end

end
