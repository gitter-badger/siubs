require 'rails_helper'

RSpec.describe District, type: :model do

	# Modules for Discrict that helps reduce duplication
	module DistrictHelpers
	end

	# Shared Exemple
	# shared_examples_for "car" do
	# 	it 'should have 4 wheels' do
	# 		expect(@car.wheels).to eql(4)
	# 	end
	# end
	# describe Car do
	# 	describe "Porsche" do
	# 		before { @car = Car.preset(:porsche) }
	# 		it_behaves_like "car"
	# 	end
	# 	describe "Ferrari" do
	# 		before { @car = Car.preset(:ferrari) }
	# 		it_behaves_like "car"
	# 	end
	# end

	# Valid attributes for creating a District
	let(:valid_attr){:discrict_name => "CENTRO"}
	let(:invalid_attr){:discrict_name => "1234"}

	# Describes discrict unit test
	describe District do
		describe "valid attributes" do
			subject(:discrict){valid_attr}

			it "should "

		end

		describe "invalid attributes" do
			subject(:discrict){invalid_attr}
		end
	end

end
