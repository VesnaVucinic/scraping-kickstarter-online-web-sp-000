 require 'nokogiri'
 require 'pry'

#We click around a bit in the Chrome web inspector, take a stab at a CSS selector in Pry, and then keep track of that selector in our project file. 

def create_project_hash
  html = File.read("fixtures/kickstarter.html")
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value


create_project_hash

