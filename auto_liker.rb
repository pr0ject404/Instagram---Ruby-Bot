require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'rb-readline' # Ruby IRB
require 'awesome_print' # Console output
require_relative 'config' # Pulls all config in config.rb

username = $username
password = $password
like_counter = 0
num_of_rounds = 0
MAX_LIKES = 1500

# Open Browser, Navigate to Login page
browser = Watir::Browser.new :chrome, switches: ['--incognito']
browser.goto "instagram.com/accounts/login/"

# Navigate to Username and Password fields, inject info
puts "Logging in..."
browser.text_field(:name => "username").set "#{username}"
browser.text_field(:name => "password").set "#{password}"

# Click Login Button
browser.button(:class => 'oF4XW sqdOP  L3NKy      ').click
sleep(2)
puts "We're in #DatCrawlLifeDoe"

# Change the Page
browser.goto "instagram.com/"

# Continuous loop to break upon reaching the max likes
loop do
  # Scroll to bottom of window 3 times to load more results (20 per page)
  1.times do |i|
    browser.driver.execute_script("window.scrollBy(0,document.body.scrollHeight)")
    sleep(1)
  end
 
  # Call all unliked like buttons on page and click each one.
  if browser.span(:class => 'glyphsSpriteHeart__outline__24__grey_9 u-__7').exists?
    browser.spans(:class => 'glyphsSpriteHeart__outline__24__grey_9 u-__7').each { |val|
      val.click
      like_counter += 1
    }
    ap "Photos liked: #{like_counter}"
  elsif browser.span(:class => 'glyphsSpriteHeart__filled__24__red_5 u-__7').exists?
	browser.spans(:class => 'glyphsSpriteHeart__filled__24__red_5 u-__7').each { |val|
      val.click
      like_counter -= 1
    }
    end
  num_of_rounds += 1
  puts "--------- #{like_counter / num_of_rounds} likes per round (on average) ----------"
  break if like_counter >= MAX_LIKES
  sleep(30) # Return to top of loop after this many seconds to check for new photos
end

# Leave this in to use the REPL at end of program
# Otherwise, take it out and program will just end
Pry.start(binding)
