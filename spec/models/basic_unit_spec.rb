require 'rails_helper'

RSpec.describe BasicUnit, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  let(:valid_attributes) {{
  		latitude: 15.841038, 
  		longitude: 15.841038, 
  		estab_name: "Hospital", 
  		phone: "123",
  		city_id: 0
  }}

	let(:invalid_attributes) {{
  		latitude: "not_a_number", 
  		longitude: "not_a_number", 
  		estab_name: "", 
  		phone: "phone",
  		city_id: 0
  }} 

  context "Valid Basic Unit" do
  	before :each do
  		@valid_basic_unit = BasicUnit.new(valid_attributes)
  	end

  	it "should create a valid basic unit" do
  		expect(@valid_basic_unit.valid?).to be_truthy
  	end
  end

  context "Invalid Basic Unit" do
  	before :each do
  		@invalid_basic_unit_1 = BasicUnit.new(invalid_attributes)
  	end

  	it "should not create an invalid basic unit" do
  		expect(@invalid_basic_unit_1.valid?).to be_falsy
  	end
  end

  describe 'search' do
    let(:valid_attr) {{
      latitude: 15.841038, 
      longitude: 15.841038, 
      estab_name: "Hospital", 
      phone: "123"
    }}
    context "With a valid name" do
      subject(:city){City.create}
      subject(:basic_unit){BasicUnit.create({latitude: 15.841038, longitude: 15.841038, estab_name: "Hospital", phone: 123})}
      before do
        @valid_name = basic_unit.estab_name
        @search = BasicUnit.search(@valid_name)
      end

      it "should have the main data of the basic_unit" do
        expect(@search.estab_name).not_to be_nil
        expect(@search.latitude).not_to be_nil
        expect(@search.longitude).not_to be_nil
      end
    end

    context "With an invalid name" do
      let(:invalid_name){"Nome invalido"}

      before do
        @search = BasicUnit.search(invalid_name)
      end

      it "should not return an basic_unit" do
        expect(@search).to be_nil
      end
    end


  end

end
