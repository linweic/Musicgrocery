Given(/^signin page$/) do
  visit('/customers/sign_in')
end
Given(/^I login successfully$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
  {:email => "abhimisra92@gmail.com", 
  :password => "abhishek"}
  FactoryGirl.create(:customer, attributes)
  end
  visit('/customers/sign_in')
  fill_in 'customer_email', :with => "abhimisra92@gmail.com"
  fill_in 'customer_password', :with => "abhishek"
  click_button "Log in"
end

When(/^I click on edit profile$/) do
  click_link "Edit profile"
end

Then(/^I should see the edit profile page$/) do
  assert page.has_content?("Edit Customer")
end

When(/^I click on logout$/) do
  click_link "Logout"
end

Then(/^I should sign out successfully and go back to the home page$/) do
  assert page.has_content?("Signed out successfully.")
end
