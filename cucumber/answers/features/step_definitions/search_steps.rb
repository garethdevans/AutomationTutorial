Given /^I am using google$/ do
  @search_page = google_search_page
  @search_page.open
end

Given /^I am using bing$/ do
  @search_page = bing_search_page
  @search_page.open
end

When /^I search for '(.*)'$/ do |text|
  @search_page.set_search(text)
  @search_page.click_search_button
end

Then /^the top result should be '(.*)'$/ do |text|
  @search_page.top_result_contains(text)
end

Then /^the results include the text '(.*)'$/ do |text|
  @search_page.should_contain?(text)
end

