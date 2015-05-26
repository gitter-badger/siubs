
Given(/^I am on the parse page$/) do
  '/parses'
end

When(/^I press "(.*?)"$/) do |importar|
  click_button importar
end

Then(/^The file "([^"]*)" sould exits$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
