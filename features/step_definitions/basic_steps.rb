Given("I visit the index page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("show me the page") do
  save_and_open_page
end

Then("I should be redirected to {string} page") do |page_name|
    expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
   case page_name.downcase
   when 'registration'
       new_user_registration_path
   else
      root_path
  end
end
