require 'rubygems'
require 'watir-webdriver'
require 'rspec'

browser = Watir::Browser.new(:firefox)

Before do
  @browser = browser
end

at_exit do
  sleep 3
  browser.close rescue nil
end

class SearchWorld
  
  public
  def google_search_page
    @google_search_page ||= GoogleSearchPage.new(@browser, $config["google_search_page_location"])
	return @google_search_page
  end
  
end

World do
  SearchWorld.new
end
