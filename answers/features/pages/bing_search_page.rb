class BingSearchPage
  def initialize (browser, site)
    @browser = browser
    @site = site
  end

  def open
    @browser.goto(@site)
  end

  def set_search(text)
    @browser.text_field(:id => "sb_form_q").set(text)
  end

  def click_search_button
    @browser.button(:id => "sb_form_go").click
  end

  def wait_for_div(id)
    i = 0
    while !@browser.div(:id => id).exists? do
      raise 'Can not locate element' if i >= 10
      i = i + 1
      sleep 1
    end
  end

  def should_contain?(text)
    wait_for_div('results')
    found = @browser.text.include? text
    found.should == true
  end

end

