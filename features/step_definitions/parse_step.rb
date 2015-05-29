
Given(/^I am on the new parse page$/) do
	@ubs_amount = Ubs.count 
	visit('/parses/new')
end

When(/^I upload a csv file$/) do
	attach_file(:file, File.join(Rails.root, 'public', 'ubs2.csv'))
end

When(/^I press importar button$/) do
	click_button('importar')
end

Then(/^the number of ubs should change$/) do
	Ubs.count.should > @ubs_amount
end

Then(/^I should see the file upload page again$/) do
	visit('/parses/new')
end
