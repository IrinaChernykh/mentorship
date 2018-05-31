#!/usr/bin/env ruby
require 'appium_lib'

caps = Appium.load_appium_txt file:File.join(Dir.pwd, './appium.txt')

RSpec.configure do |config|

  config.before :all do

    puts 'start new driver'

    # Checking if parameters are present, if not set default values
    # if caps[:parameters] != nil
    #   @parameters = caps[:parameters]
    #   if @parameters[:formFactor] == nil
    #     puts "WARNING: 'formFactor' not defined in [parameters], setting it to 'handheld'"
    #     @parameters[:formFactor] = 'handheld'
    #     puts @parameters
    #   end
    # else
    #   puts "WARNING: [parameters] doesn't exist in appium.txt, adding it with default parameters'"
    #   @parameters = {}
    #   @parameters[:formFactor] = 'handheld'
    #   puts @parameters
    # end

    @driver = Appium::Driver.new(caps, true)
    @driver.start_driver
  end

  config.after :all do
    puts 'quit driver'
    @driver.driver_quit
  end
end
