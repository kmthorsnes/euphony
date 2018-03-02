Given("I am on the index page") do
  visit root_path
end

When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
end

Then("I should see the message {string}") do |content|
    expect(page).to have_content content
end

Given("the following user exist") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
   end
end
