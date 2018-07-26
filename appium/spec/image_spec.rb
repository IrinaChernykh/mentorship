#!/usr/bin/env ruby
require 'rubygems'
require 'appium_lib'
require_relative './spec_helper'
require_relative '../page/lander'
require_relative '../page/image_tests'
require_relative '../page/image_test_pdp'

describe 'Image tests' do
  before (:all) do
    puts 'Image Test starting'
    @lander = Lander.new(@driver)
    @image_lander = ImageTests.new(@driver)
    @ImageTestPDP = ImageTestPDP.new(@driver)
  end

  #test1 navigate to Image test
  #puts "test1:Navigate to image tests tab"
  #ImageTests = @driver.find_elements(name: "Btn-Name[@isHittable='true']")[6].click
  # @driver.find_elements(name: "Btn-Name[@isHittable='true']")[6].click
  context "when clicking View test tab" do
    it 'loads the Image Tests Screen' do
    # Action
    # @driver.find_element(name: "Btn-Name[@text='Image Tests >']").click
    @lander.click_on_image_tests_tab
    # Verification
    sleep 5
    expect(@image_lander.image_tests_displayed).to be true
  end
    # #test2 navigate to Image test1
    # puts "test2: Navigate to image test 1"
    # ImageTest = @driver.find_element(name: "Text[@text='Image Test']").click
  end
  context "when clicking Image test" do
    it 'loads the Image Test sub lander' do
    @image_lander.click_on_image_test_subtab
    sleep 5
    expect(@ImageTestPDP.image_tests_header).to be true
  end
  end

  # #tests3 check if images id displayed
  # ImageBird = @driver.find_element(id: "24").attribute("isDisplayed")
  # puts "is image ImageBird displayed #{ImageBird}"
  #
  context "when on Image test PDP" do
      it 'display ImageBird' do
          sleep 5
      expect(@ImageTestPDP.imageBird_isDisplayed).to be true
  end
  end

  # ImageLogo = @driver.find_element(id: "17").attribute("isDisplayed")
  # puts "is image ImageLogo displayed #{ImageLogo}"
  context "when on Image test PDP" do
      it 'display logoDONOTCHANGE' do
          sleep 5
          expect(@ImageTestPDP.imageLogo_isDisplayed).to be true
      end
  end
  # ImageStratched = @driver.find_element(id: "18").attribute("isDisplayed")
  # puts "is image ImageStratched displayed #{ImageStratched}"
  context "when on Image test lander" do
      it 'display stretch' do
          sleep 5
          expect(@ImageTestPDP.imageStratched_isDisplayed).to be true
      end
  end
  # ImageRepeat = @driver.find_element(id: "19").attribute("isDisplayed")
  # puts "is image ImageRepeat displayed #{ImageRepeat}"
  context "when on Image test lander" do
      it 'display repeat' do
          sleep 5
          expect(@ImageTestPDP.imageRepeat_isDisplayed).to be true
      end
  end
  # ImageCenter = @driver.find_element(id: "20").attribute("isDisplayed")
  # puts "is image ImageCenter displayed #{ImageCenter}"
  context "when on Image test lander" do
      it 'display center' do
          sleep 5
          expect(@ImageTestPDP.imageCenter_isDisplayed).to be true
      end
  end
  # ImageCover = @driver.find_element(id: "22").attribute("isDisplayed")
  # puts "is image ImageCover displayed #{ImageCover}"
  context "when on Image test lander" do
      it 'display cover' do
          sleep 5
          expect(@ImageTestPDP.imageCover_isDisplayed).to be true
      end
  end
  # ImageContain = @driver.find_element(id: "23").attribute("isDisplayed")
  # puts "is image ImageContain displayed #{ImageContain}"
  context "when on Image test lander" do
      it 'display contain' do
          sleep 5
          expect(@ImageTestPDP.imageContain_isDisplayed).to be true
      end
  end
  context "when on Image test lander" do
      it 'navigate back' do
        @ImageTestPDP.click_BACK
          sleep 5
          expect(@image_lander.image_tests_displayed).to be true
      end
  end

  # sleep 5
  # # @driver.driver_quit
  # puts 'Tests Succeeded!'
end
