
require 'rubygems'
require 'appium_lib'

APP_PATH = './ContactManager.apk'

desired_caps = {
  caps: {
    app: "./ContactManager.apk",
    deviceName: "01aa3411032905a7",
    platformName: "android"

  },
  appium_lib: {
    sauce_username:   nil, # don't run on Sauce
    sauce_access_key: nil,
    wait: 60
  }
}


# Start the driver
Appium::Driver.new(desired_caps, true).start_driver
  #class Helper
  #def select_and_accept
  #  <your code in here>
  #end
  #def send_kiss_to_tiger
  #  <your code in here>
  #end
#end



module ContactManager
  module IOS

    #@helper = Helper.new()
    # Add all the Appium library methods to Test to make
    # calling them look nicer.
    Appium.promote_singleton_appium_methods ContactManager
    sleep 2
    puts "App Lauched"

    #test1 click checkbox
    puts "test1:Checking checkbox"
    el1 = find_element(:accessibility_id, "Show Invisible Contacts (Only)")
    el1.click


    #test2 click Add contact button
    puts "test2:Clicking on Add Contact"
    el1 = driver.find_element(:accessibility_id, "Add Contact")
    el1.click


    #test 3 switch target account
    puts "test3:switch target account"
    el2 = driver.find_element(:id, "com.example.android.contactmanager:id/accountSpinner")
    el2.click
    el3 = driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.RelativeLayout[2]")
    el3.click


    #test4 add contact with contact name Only
    puts "test4: enter contact name to contact name field"
    el4 = driver.find_element(:id, "com.example.android.contactmanager:id/contactNameEditText")
    el4.send_keys "Irina"
    sleep 2
    Appium::TouchAction.new.press(x: 396, y: 504).move_to(x: -5, y: -124).release.perform
    sleep 2
    puts "test4: click Save button"
    el5 = driver.find_element(:accessibility_id, "Save")
    el5.click

    #test5 add contact with name and Home phone WorkPhoneNumber
    puts "test5: click Add button"
    AddContact = driver.find_element(:accessibility_id, "Add Contact")
    AddContact.click
    puts "test5: enter contact name AAA"
    #enter contact name "AAA"
    ContactName = driver.find_element(:id, "com.example.android.contactmanager:id/contactNameEditText")
    ContactName.send_keys "AAA"
    puts "test5: enter phone number"
    #enter phone number
    HomePhoneNumber = driver.find_element(:id, "com.example.android.contactmanager:id/contactPhoneEditText")
    HomePhoneNumber.send_keys "111 111 11 11"
    sleep 2
    Appium::TouchAction.new.press(x: 396, y: 504).move_to(x: -5, y: -124).release.perform
    sleep 2
    puts "test5: click Save button"
    el5 = driver.find_element(:accessibility_id, "Save")
    el5.click

    #test 6 add contact with name and WORK phone number
    #click Add button
    AddContact2 = driver.find_element(:accessibility_id, "Add Contact")
    AddContact2.click
    puts "test6: enter contact name BBB"
    #enter contact name "BBB"
    ContactName2 = driver.find_element(:id, "com.example.android.contactmanager:id/contactNameEditText")
    ContactName2.send_keys "BBB"
    #select Work option
    puts "test6: selecting Work phone option"
    PhoneOption = driver.find_element(:id, "com.example.android.contactmanager:id/contactPhoneTypeSpinner")
    PhoneOption.click
    WorkPhone = driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.ListView/android.widget.CheckedTextView[2]")
    WorkPhone.click
    #enter phone number
    puts "test6: enter phone number"
    WorkPhoneNumber = driver.find_element(:id, "com.example.android.contactmanager:id/contactPhoneEditText")
    WorkPhoneNumber.send_keys "222 222 22 22"
    sleep 2
    Appium::TouchAction.new.press(x: 396, y: 504).move_to(x: -5, y: -124).release.perform
    sleep 2
    puts "test6: click Save button"
    el5 = driver.find_element(:accessibility_id, "Save")
    el5.click

    #test 7 add contact with name and home email
    #click Add button
    AddContact = driver.find_element(:accessibility_id, "Add Contact")
    AddContact.click
    puts "test7: enter contact name CCC"
    #enter contact name "CCC"
    ContactName3 = driver.find_element(:id, "com.example.android.contactmanager:id/contactNameEditText")
    ContactName3.send_keys "CCC"

    #enter phone number
    puts "test7: enter email"
    HomeEmail = driver.find_element(:id, "com.example.android.contactmanager:id/contactEmailEditText")
    HomeEmail.send_keys "blabla@g.com"
    sleep 2
    Appium::TouchAction.new.press(x: 396, y: 504).move_to(x: -5, y: -124).release.perform
    sleep 2
    puts "test7: click Save button"
    el5 = driver.find_element(:accessibility_id, "Save")
    el5.click

    #test 8 add contact with name and work email
    #click Add button
    AddContact = driver.find_element(:accessibility_id, "Add Contact")
    AddContact.click
    puts "test8: enter contact name DDD"
    #enter contact name "CCC"
    ContactName4 = driver.find_element(:id, "com.example.android.contactmanager:id/contactNameEditText")
    ContactName4.send_keys "DDD"
    #select Work option
    puts "test8: selecting Work phone option"
    EmailOption = driver.find_element(:id, "com.example.android.contactmanager:id/contactEmailTypeSpinner")
    EmailOption.click
    WorkEmail = driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.ListView/android.widget.CheckedTextView[2]")
    WorkEmail.click
    #enter phone number
    puts "test8: enter email"
    WorkEmail = driver.find_element(:id, "com.example.android.contactmanager:id/contactEmailEditText")
    WorkEmail.send_keys "blabla@g.com"
    sleep 2
    Appium::TouchAction.new.press(x: 396, y: 504).move_to(x: -5, y: -124).release.perform
    sleep 2
    puts "test8: click Save button"
    el5 = driver.find_element(:accessibility_id, "Save")
    el5.click

    sleep 5
    driver_quit
    puts 'Tests Succeeded!'
  end
end
