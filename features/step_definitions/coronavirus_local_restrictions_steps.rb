When "I visit the postcode checker" do
  visit_path "/find-coronavirus-local-restrictions"
end

When "I enter a valid postcode" do
  fill_in "Enter your postcode", with: "E18QS"
  click_button "Find"
end

Then "I should see the local restrictions results page" do
  expect(page).to have_content("Local COVID Alert Level")
end
