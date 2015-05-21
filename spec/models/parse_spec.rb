require 'rails_helper'

RSpec.describe Parse, :type => :model do
	describe 'import_ubs' do
		context 'with invalid file' do
			let(:file_name) {"file.doc"}

			it 'should show invalid extension file message' do
				
			end
		end
	end
end