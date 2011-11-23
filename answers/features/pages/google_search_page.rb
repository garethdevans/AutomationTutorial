class GoogleSearchPage
  def initialize (browser, site)
    @browser = browser
    @site = site
  end

  def open
    @browser.goto(@site)
  end

  def set_search(text)
    @browser.text_field(:name, /q/).set(text)
  end

  def click_search_button
    @browser.button(:name, /btnG/).click
  end

  def wait_for_div(id)
    i = 0
    while !@browser.div(:id => id).exists? do
      raise 'Can not locate element' if i >= 10
      i = i + 1
      sleep 1
    end
  end

  def top_result_contains(text)
    wait_for_div('ires')
    @browser.div(:id, 'ires').links[0].text.should == text
  end

  def should_contain?(text)
    wait_for_div('ires')
    found = @browser.text.include? text
    found.should == true
  end

  def has_map?
    wait_for_div('ires')    
	s = false
    @browser.images.each do |image|
      s = true if image.class_name.downcase.match(/map/i)
    end

    s.should == true
  end

  def results
    wait_for_div('ires')    
    @browser.div(:id, 'ires').ol.lis.count
  end

end

