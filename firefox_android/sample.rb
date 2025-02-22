require "selenium-webdriver"
require "webdriver-user-agent"

driver = Webdriver::UserAgent.driver(
  browser: :firefox,
  agent: :android_phone
)

url = "https://github.com/sonota88/ruby-selenium-webdriver-sample"
driver.navigate.to(url)
sleep 3

html = driver.page_source
puts html[0...1000]

driver.quit
