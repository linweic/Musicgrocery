Given(/^I'm on the home page$/) do
  visit('/music_grocery/index')
  
end
When(/^I submit the login form$/) do
  click_link 'Login'
end

Then(/^I should be able to see the login successful page$/) do
  assert page.has_content?("Log in")
end

When(/^I click on sign up$/) do
  click_link 'Sign up'
end

Then(/^I should be able to see the new user page$/) do
  assert page.has_content?("Sign up")
end

When(/^I search for an artist$/) do
  click_button 'Search!'
end

Then(/^I should be able to see the artist details page$/) do
  assert page.has_link?("Add to Favourites!")
end
