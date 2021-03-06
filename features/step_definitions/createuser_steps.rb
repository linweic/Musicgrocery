Given(/^I'm on the sign up page$/) do
  visit('/customers/sign_up')
end

When(/^I enter the email, password and confirm password correctly$/) do
  fill_in 'customer[email]', :with =>"abhi92_rocky@yahoo.co.in"
  fill_in 'customer_password', :with => "ab27021992"
  fill_in 'customer_password_confirmation', :with => "ab27021992"
  click_button 'Sign up'
end

Then(/^I should be able to see the sign up successful page$/) do
  assert page.has_content?("Welcome! You have signed up successfully.")
end

When(/^I leave the email field blank$/) do
  fill_in 'customer_email', :with =>""
  fill_in 'customer_password', :with => "kuchbhi"
  fill_in 'customer_password_confirmation', :with => "kuchbhi"
  click_button 'Sign up'
end

Then(/^I should be able to see an email blank message in the same page$/) do
  assert page.has_content?("Email can't be blank")
end


When(/^I leave the password field blank$/) do
  fill_in 'customer_email', :with =>"shreyap.seas.upenn.edu"
  fill_in 'customer_password', :with => ""
  fill_in 'customer_password_confirmation', :with => "kuchbhi"
  click_button 'Sign up'
end

Then(/^I should be able to see a password blank message in the same page$/) do
  assert page.has_content?("Password can't be blank")
end

When(/^I leave the confirm field blank$/) do
  fill_in 'customer_email', :with =>"shreyap.seas.upenn.edu"
  fill_in 'customer_password', :with => "kuchbhi"
  fill_in 'customer_password_confirmation', :with => ""
  click_button 'Sign up'
end

Then(/^I should be able to see an confirm blank message in the same page$/) do
  assert page.has_content?("Password doesn't match confirmation")
end

When(/^the content I entered in password field is not same as conform field$/) do
  fill_in 'customer_email', :with =>"abhi92_rocky@yahoo.co.in"
  fill_in 'customer_password', :with => "ab27021992"
  fill_in 'customer_password_confirmation', :with => "abcdefghi"
  click_button 'Sign up'
end

Then(/^I should be able to see a mismatch message in the same page$/) do
  assert page.has_content?("Password doesn't match confirmation")
end
