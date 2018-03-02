Given("I visit the index page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("show me the page") do
  save_and_open_page
end
