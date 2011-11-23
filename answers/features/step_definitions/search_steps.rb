Given /^I am using google$/ do
  google_search_page.open
end

When /^I search for '(.*)'$/ do |text|
  google_search_page.set_search(text)
  google_search_page.click_search_button
end

Then /^the top result should be '(.*)'$/ do |text|
  google_search_page.top_result_contains(text)
end

Then /^the results include the text '(.*)'$/ do |text|
  pending "You need to find the appropriate method on google_search_page"
end

