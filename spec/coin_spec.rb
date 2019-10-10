require 'nokogiri'
require 'open-uri'


def scrap_nom
nom_crypto=[]
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//td[2]/a').each do |nom|
nom_crypto << nom.text
end
puts nom_crypto



value_crypto=[]
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//td[5]/a').each do |nom|
value_crypto << nom.text.delete("$,").to_f.round(2)
end
puts value_crypto




#     ruby lib/coin3.rb
