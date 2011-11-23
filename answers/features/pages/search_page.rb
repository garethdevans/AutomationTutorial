class SearchPage
  def initialize (browser, site)
    @browser = browser
    @site = site
  end

  def open
    @browser.goto(@site)
  end

  def wait_for_div(id)
    i = 0
    while !@browser.div(:id => id).exists? do
      raise 'Can not locate element' if i >= 10
      i = i + 1
      sleep 1
    end
  end

end

