#!/usr/bin/env ruby
require 'rubygems'
require 'appium_lib'
require_relative './spec_helper'

describe 'Image test' do
  before (:all) do
    puts 'Image Test starting'
    # This is used for initialization before starting tests
    # To be used later
  end

  #test1 navigate to Image test
  #puts "test1:Navigate to image tests tab"
  #ImageTests = @driver.find_elements(name: "Btn-Name[@isHittable='true']")[6].click
  # @driver.find_elements(name: "Btn-Name[@isHittable='true']")[6].click
  context "when clicking View test tab" do
    # Action
    it {expect(@driver.find_elements(name: "Btn-Name[@isHittable='true']")[6].click).to be_nil}
    # Verification

    it {expect(@driver.find_element(name: '> Image Tests').displayed?).to be_truthy}
  end
  #  sleep 2
  # #test2 navigate to Image test1
  # puts "test2: Navigate to image test 1"
  # ImageTest = @driver.find_element(name: "Text[@text='Image Test']").click
  # sleep 5
  # #tests3 check if images id displayed
  # ImageBird = @driver.find_element(id: "24").attribute("isDisplayed")
  # puts "is image ImageBird displayed #{ImageBird}"
  #
  # ImageLogo = @driver.find_element(id: "17").attribute("isDisplayed")
  # puts "is image ImageLogo displayed #{ImageLogo}"
  #
  # ImageStratched = @driver.find_element(id: "18").attribute("isDisplayed")
  # puts "is image ImageStratched displayed #{ImageStratched}"
  #
  # ImageRepeat = @driver.find_element(id: "19").attribute("isDisplayed")
  # puts "is image ImageRepeat displayed #{ImageRepeat}"
  #
  # ImageCenter = @driver.find_element(id: "20").attribute("isDisplayed")
  # puts "is image ImageCenter displayed #{ImageCenter}"
  #
  # ImageCover = @driver.find_element(id: "22").attribute("isDisplayed")
  # puts "is image ImageCover displayed #{ImageCover}"
  #
  # ImageContain = @driver.find_element(id: "23").attribute("isDisplayed")
  # puts "is image ImageContain displayed #{ImageContain}"
  #
  # sleep 5
  # # @driver.driver_quit
  # puts 'Tests Succeeded!'
end
