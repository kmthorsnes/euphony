Given("I am on the index page") do |table|
  visit root_path
end

Then("I should be redirected to {string} page") do |page|
    visit new_user_registration_path
end

When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
end

Then("I should see the message {string}") do |content|
    expect(page).to have_content content
end
