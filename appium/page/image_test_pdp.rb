#!/usr/bin/env ruby
require_relative 'page_helper'

class ImageTestPDP < Page

  BackButton = { name: "Text[@text='BACK']"}
  ImageContain = {id: "23"}
  ImageCover = {id: "22"}
  ImageCenter = {id: "20"}
  ImageRepeat = {id: "19"}
  ImageStratched = {id: "18"}
  ImageLogo = {id: "17"}
  ImageBird = {id: "24"}
  ImageTestsHeader = {name: "Crumb[@text='> Image Tests > Image Test']"}

  def image_tests_header
    is_displayed? ImageTestsHeader
  end
  def click_BACK
    click BackButton
  end

  def imageContain_isDisplayed
    is_displayed? ImageContain
  end

  def imageCover_isDisplayed
  is_displayed? ImageCover
  end
  def imageCenter_isDisplayed
    is_displayed? ImageCenter
  end
  def imageRepeat_isDisplayed
    is_displayed? ImageRepeat
  end
  def imageStratched_isDisplayed
    is_displayed? ImageStratched
  end
  def imageLogo_isDisplayed
    is_displayed? ImageLogo
  end
  def imageBird_isDisplayed
    is_displayed? ImageBird
  end
end
