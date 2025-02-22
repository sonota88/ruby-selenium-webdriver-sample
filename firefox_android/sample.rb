require "selenium-webdriver"
require "webdriver-user-agent"

PROFLIE_ROOT = File.expand_path("z_tmp", __dir__)

service = Selenium::WebDriver::Service.firefox
service.args += ["--profile-root", PROFLIE_ROOT]

driver = Webdriver::UserAgent.driver(
  service: service,
  browser: :firefox,
  agent: :android_phone
)

url = "https://github.com/sonota88/ruby-selenium-webdriver-sample"
driver.navigate.to(url)
sleep 3

html = driver.page_source
puts html[0...1000]

driver.quit
