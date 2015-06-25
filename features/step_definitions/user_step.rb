Given(/^I am in the 'Create account' page$/) do
  visit(new_user_registration_path)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field.gsub(' ', '_'), :with => value)
end

When(/^I fill the "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field.gsub(' ', '_'), :with => value)
end

When(/^I fill one "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field.gsub(' ', '_'), :with => value)
end

When(/^I fill "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field.gsub(' ', '_'), :with => value)
end

When(/^I press "([^"]*)"$/) do |signup|
	click_button(signup)
end

Then(/^an account with the username "([^"]*)" should exist$/) do |name|
  User.find_by_user_name(name)
end
