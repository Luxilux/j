require 'rubygems'
require 'nokogiri'   
require 'open-uri'


def trader_obscur
page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
cours_crypto = [page.css("a[class=price]").each {|link| puts link.text}]
nom_cryptos =  [page.css("a[class=link-secondary]").each {|noms| puts noms.text}]
end 
#puts trader_obscur



