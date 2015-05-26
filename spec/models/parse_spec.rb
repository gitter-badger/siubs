require 'rails_helper'

RSpec.describe Parse, :type => :model do
	describe 'import_ubs' do
		context 'with invalid file extension' do
			let(:file_name) {"file.doc"}

			it 'should show invalid extension file message' do
				
			end
		end

		context 'with valid file extension' do
			file_ext = File.extname("/public/ubs.csv") 

			it 'should open the file' do
				expect(file_ext).to eql(".csv")
			end
		end
	end
end

# Casos de Teste

# arquivo com extensao errada
# expect().to have city
# expect().to have district
# expect().to have ubs