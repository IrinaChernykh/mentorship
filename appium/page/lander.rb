#!/usr/bin/env ruby
require_relative 'page_helper'

class Lander < Page

  IMAGE_TESTS = { name: "Btn-Name[@text='Image Tests >']"}

  def click_on_image_tests_tab
    click IMAGE_TESTS
  end
end
