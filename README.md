# Web Scraping/Crawling Tutorial
A tutorial on web scraping and crawling aimed to get you up and running in 15 minutes.

### YouTube Videos
<a href="http://www.youtube.com/watch?feature=player_embedded&v=cswubkLlocI" target="\_blank"><img src="http://img.youtube.com/vi/cswubkLlocI/0.jpg"
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10"/></a>
<a href="http://www.youtube.com/watch?feature=player_embedded&v=Bh4gy602NTs" target="\_blank"><img src="http://img.youtube.com/vi/Bh4gy602NTs/0.jpg"
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10"/></a>
<a href="http://www.youtube.com/watch?feature=player_embedded&v=f8WQZNbHHX8" target="\_blank"><img src="http://img.youtube.com/vi/f8WQZNbHHX8/0.jpg"
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10"/></a>

### Config
Make sure to update your login info and followers in the config.rb file.

### How to Run from Command Line
To run each file navigate to the main directory (web_scraper) in your terminal and run the word `ruby` followed by the name of the file. Example:
`$ ruby auto_follow.rb`
or
`$ ruby auto_liker.rb`

### Updates (since videos were made)
I've made some fairly simple updates since the videos.
- changed the `while true` loops to `loop do` loops with a break condition using a constant variable set at top
- added more variables for counting, tracking, and info output
- added top 100 users on instagram at the bottom of `auto_follow.rb`

### Updates (by pr0ject404)
- updated all `class`
- support for the new unfollow confirmation
- updated users list
- created `Automatization.bat` ( only for windows users )
- updated `credentials.rb` to `config.rb` edit all config in this file

### Libraries Used
[watir](https://github.com/watir/watir) for crawling in live browser `gem instal watir`<br>
[pry](https://github.com/pry/pry) ruby REPL `gem install pry`<br>
[rb-readline](https://github.com/ConnorAtherton/rb-readline) ruby IRB and dependency of pry `gem install rb-readline`<br>
[awesome-print](https://github.com/awesome-print/awesome_print) for clearer console output `gem install awesome_print`<br>

### Notes
- MSYS2 development toolchain it's not necessary
- for windows is recommend `Ruby version 2.4.4-2` [[download]](https://rubyinstaller.org/downloads/archives/)
- download the [chromedriver](http://chromedriver.chromium.org/downloads) if necessary 
 

Credits: [dv1pr / Web-Scraping-Tutorial](https://github.com/dv1pr/Web-Scraping-Tutorial)
