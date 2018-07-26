#!/usr/bin/env ruby
require_relative 'page_helper'

class ImageTests < Page

  IMAGE_TEST = { name: "Text[@text='Image Test']" }
  IMAGE_TESTS = { name: "Crumb[@text='> Image Tests']" }

  def click_on_image_test_subtab
    click IMAGE_TEST
  end
  def image_tests_displayed
    is_displayed? IMAGE_TESTS
  end
end
