require "selenium-webdriver"

driver = Selenium::WebDriver.for(:firefox)

url = "https://github.com/sonota88/ruby-selenium-webdriver-sample"
driver.navigate.to(url)
sleep 3

html = driver.page_source
puts html[0...1000]

driver.quit
