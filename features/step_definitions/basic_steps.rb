Given("I visit the index page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I click the button {string}") do |element|
  click_link_or_button element
end

Then("I should fill in {string} with {string}") do |field, song|
  fill_in field, with: song
end
