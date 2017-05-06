Given /^I am on the (.*) page$/ do |page_identifier|
  visit url_for(page_identifier)
end

When /^I fill in "([^"]+)" with "([^"]+)"$/ do |locator, value|
  fill_in locator, with: value
end

When /^I click "([^"]+)"$/ do |locator|
  all(locator).click
end

Then /^I should see "([^"]+)"$/ do |value|
  assert_text value
end

Then /^(.*) within (.*)$/ do |step_content, section_identifier|
  locator = locator_for section_identifier
  scope = find(locator)
  within(scope) { step(step_content) }
end
