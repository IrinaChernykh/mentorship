#!/usr/bin/env ruby
require 'appium_lib'
require 'timeout'
class Page

  def initialize driver
    @driver = driver
  end

  def click locator
    find(locator).click
  end

  def find(locator)
    wait_until {@driver.find_element locator}
  end

  def is_displayed? locator
  rescue_exceptions {find(locator).displayed?}
  end

  def wait_until
    Selenium::WebDriver::Wait.new(:timeout =>20).until {yield}
  end

  def rescue_exceptions
    begin
      yield
    rescue  Selenium::WebDriver::Error::NoSuchElementError
      false
    rescue Selenium::WebDriver::Error::StaleElementReferenceError
      false
    end
  end

end
