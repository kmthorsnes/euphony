Given("I am on the index page") do |table|
  visit '/'
end

When("I click {string}") do |link|
 click_link_or_button link
end

Then("I should be redirected to {string} page") do |page|
    visit registration_path
end

When("I fill in {string} with {string}") do |field, input|
    fill_in feild, with: input
end

Then("I should see the message {string}") do |content|
    expect(page).to have_content content
end
