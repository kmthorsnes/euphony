Then("the {string} should be visible") do |selector|
  expect(page).to have_selector 'nav', id: 'navbar'
end

When("I click {string}") do |element|
  click_link_or_button element
end
