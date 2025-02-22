require "selenium-webdriver"

PROFLIE_ROOT = File.expand_path("z_tmp", __dir__)
FileUtils.mkdir_p PROFLIE_ROOT

service = Selenium::WebDriver::Service.firefox
service.args += ["--profile-root", PROFLIE_ROOT]

driver = Selenium::WebDriver.for(:firefox, service: service)

url = "https://github.com/sonota88/ruby-selenium-webdriver-sample"
driver.navigate.to(url)
sleep 3

html = driver.page_source
puts html[0...1000]

driver.quit
