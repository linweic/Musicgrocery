Given(/^I'm on the search details page and I'm not logged in$/) do
  visit('/music_grocery/index')
  fill_in 'search_name', :with => "Linkin Park"
  click_button 'Search!'
  #print page.html
end

When(/^I click on Add to Favorites!$/) do
  click_link "Add to Favourites!"
end

Then(/^I should be prompted to login$/) do
  assert page.has_content?("Log in")
end


Given(/^I'm on the search details page and I'm logged in$/) do |table|
  #print page.html
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
  fill_in 'search_name', :with => "Linkin Park"
  click_button 'Search!'
end

When(/^I press the button Add to Favorites!$/) do
  click_link "Add to Favourites!"
end

Then(/^I should be able to see the add new favorite artist page$/) do
  assert page.has_content?("Artist")
end

