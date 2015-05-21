require 'rails_helper'

RSpec.describe City, type: :model do
 	pending "add some examples to (or delete) #{__FILE__}"

 	let(:valid_attributes) {{:name => "Gama"}}
 	let(:invalid_attributes) {{:name => "123456"}}

	describe 'City Creation' do

		context 'with valid attributes' do
			before :each do
				@city = City.new(valid_attributes)
			end

			it "should create a new city" do
				
			end
		end
	end

end
