Given(/^I'm on the login page$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
  {:email => "abhimisra92@gmail.com", 
  :password => "abhishek"}
  FactoryGirl.create(:customer, attributes)
  end
  visit('/customers/sign_in')
end

When(/^I enter the username and password correctly$/) do
  fill_in 'customer_email', :with => "abhimisra92@gmail.com"
  fill_in 'customer_password', :with => "abhishek"
  click_button 'Log in'
end

Then(/^I should be able to see the user dashboard page$/) do
  assert page.has_content?("Welcome!")
end

When(/^I enter the password and leave the username field blank$/) do
  fill_in 'customer_email', :with => ""
  fill_in 'customer_password', :with => "abhishek"
  click_button 'Log in'
end

Then(/^I should be able to see a username error message in the same page$/) do
  assert page.has_content?("Invalid email or password")
end

When(/^I enter the username and leave the password field blank$/) do
  fill_in 'customer_email', :with => "shreyap"
  fill_in 'customer_password', :with => ""
  click_button 'Log in'
end

Then(/^I should be able to see a password error message in the same page$/) do
  assert page.has_content?("Invalid email or password")
end





