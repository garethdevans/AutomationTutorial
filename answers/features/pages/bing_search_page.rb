require File.join(File.dirname(__FILE__), 'search_page')

class BingSearchPage < SearchPage

  def set_search(text)
    @browser.text_field(:id => "sb_form_q").set(text)
  end

  def click_search_button
    @browser.button(:id => "sb_form_go").click
  end

  def should_contain?(text)
    wait_for_div('results')
    found = @browser.text.include? text
    found.should == true
  end

end

