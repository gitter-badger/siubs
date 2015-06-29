Given(/^on any "([^"]*)" profile page$/) do |page|
  address = Address
  city = City.create!(name: "city")
  district = District.create!(district_name: "dist", city_id: city.id)
  address = Address.create!(street: "street", country_code: 1231, district_id: district.id)
  basic_unit = BasicUnit.create!(longitude: 1, latitude: -1, estab_name: "unit", phone: 123, city_id: city.id, address_id: address.id, district_id: district.id)
  visit "/basic_units"
  find("#profile#{basic_unit.id}").click
end

Given(/^I have a "([^"]*)" account$/) do |acc_type|
  find("miau") if page.has_content?(/Log In to Post/i)
end

Given(/^the permission to post a "([^"]*)"$/) do |post|
end

When(/^I write a comment$/) do
  click_on "Adicionar um comentário..." if page.has_content?(/Adicionar um comentário.../i)
end

And(/^I press "([^"]*)" of facebook$/) do |button|
  click_on "Publicar" if page.has_content?(/Publicar/i)
  click_on "Comment" if page.has_content?(/Comment/i)
end

Then(/^it should show my comment on the list$/) do
end
