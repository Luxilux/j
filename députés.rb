require 'rubygems'
require 'nokogiri'   
require 'open-uri'

#Page 1
page = Nokogiri::HTML(open('http://www2.assemblee-nationale.fr/elections/liste/2017/resultats/RESULTAT#top'))
noms = page.css("table#listedeptous tbody tr td[2]").each do |el|
   puts el.text
end

page = Nokogiri::HTML(open('http://www2.assemblee-nationale.fr/elections/liste/2017/resultats/RESULTAT#top'))
prénoms = page.css("table#listedeptous tbody tr td[3]").each do |el|
   puts el.text
end