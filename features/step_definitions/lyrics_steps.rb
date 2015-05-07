Given(/^I'm on the songs list page$/) do
  visit('/music_grocery/index')
  fill_in 'search_name', :with => "Linkin Park"
  click_button 'Search!'
  click_button 'Top Albums'
  click_button 'Meteora'
end

When(/^I click on the lyrics button corresponding to a song$/) do
  click_button '1'
end

Then(/^I should be shown the lyrics of the song$/) do
  assert page.has_content?("lyrics for")
end

