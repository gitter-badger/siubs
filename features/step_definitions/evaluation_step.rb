Given(/^There is a new UBS$/) do
  address = Address.create(street: "Street", country_code: 123, district_id: 1)
  city = City.create(name: "Cidade")
  district = District.create(district_name: "Distrito")
  @basic_unit = BasicUnit.create(latitude: 15.841038, longitude: 15.841038, estab_name: "Hospital", phone: "123", address_id: address.id, city_id: city.id, district_id: district.id)
end

When(/^I am on the ubs profile page$/) do
  visit("/basic_units/#{@basic_unit.id}")
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^There should be a new evaluation for the UBS$/) do
  evaluation = Evaluation.where(:basic_unit_id => @basic_unit.id)
  expect(evaluation.empty?).to be_falsy
end
