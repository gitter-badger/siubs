require 'rails_helper'

RSpec.describe District, type: :model do

	# Modules for District that helps reduce duplication
	module DistrictHelpers
	end

	# Valid attributes for creating a District
	let(:valid_attr_name){{district_name: "CENTRO"}}
	let(:valid_attr_name_number){{district_name: "CENTRO 1"}}
	let(:invalid_attr_blank_name){{district_name: ""}}
	let(:invalid_attr_number_name){{district_name: "12314"}}
	let(:invalid_attr_char_name){{district_name: "!@#$%*{}"}}

	# Describes district unit test
	describe "Validation" do
		context "when enter valid attributes" do

			subject(:valid_district_name){District.new(valid_attr_name)}
			subject(:valid_district_name_number){District.new(valid_attr_name_number)}
			context "only letters" do
				it "should create a district" do
					expect(valid_district_name.valid?).to be_truthy
				end
			end
			context "letters and numbers" do
				it "should create a district" do
					expect(valid_district_name_number.valid?).to be_truthy
				end
			end
		end

		context "when enter invalid attributes" do
			subject(:invalid_district_blank_name){District.new(invalid_attr_blank_name)}
			subject(:invalid_district_number_name){District.new(invalid_attr_number_name)}
			subject(:invalid_district_char_name){District.new(invalid_attr_char_name)}
			context "blank name" do
				it "should not be created" do
					expect(invalid_district_blank_name.valid?).to be_falsey
				end
			end
			context "with just numbers" do
				it "should not be created" do
					expect(invalid_district_number_name.valid?).to be_falsey
				end
			end
			context "with just special chars" do
				
				it "should not be created" do
					expect(invalid_district_char_name.valid?).to be_falsey
				end
			end
		end
	end

end
