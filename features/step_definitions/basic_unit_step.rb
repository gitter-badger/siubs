Given(/^I am on the search page$/) do
  visit('/basic_units')
end

When(/^I write "([^"]*)"$/) do |basic_unit_name|
	@ubs = BasicUnit.find_by_estab_name(basic_unit_name)
end

When(/^press the "([^"]*)" button$/) do |search|
	click_button(search)
end

Then(/^I want to see a message "([^"]*)"$/) do |message|
  page.has_content?(/Unidade Básica de Saúde não encontrada/i)
end

Then(/^I want to see the the ubs name$/) do
  page.has_content?(/US OSWALDO DE SOUZA/i)
end


