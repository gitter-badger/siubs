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

# Second scanario

Given(/^I am a logged in as "([^"]*)" with password "([^"]*)"$/) do |email, password|
	unless email.blank?
	  visit 'users/sign_in'
	  fill_in "e-mail", :with => email
	  fill_in "pwd", :with => password
	  click_button "Log in"
	end
end

Given(/^I am in the 'Edit Profile' Page$/) do
  visit '/users/edit'
end

When(/^I edit my "([^"]*)" with "([^"]*)"$/) do |field, new_email|
	fill_in field, :with => new_email
end

When(/^I press the "([^"]*)" Button$/) do |save|
	click_button save
end

Then(/^my profile account email should be "([^"]*)"$/) do |email|
  @user = User.find_by_email(email)
  @user.present?
end

