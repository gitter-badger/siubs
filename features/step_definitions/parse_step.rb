
Given(/^I am on the parse page$/) do
	visit('/parses')
end

When(/^I press importar button$/) do
	visit('/parses/new')
	click_button('importar')
end

Then(/^The file "([^"]*)" sould exits$/) do |file|
  
end
