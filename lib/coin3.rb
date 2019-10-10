require 'nokogiri'
require 'open-uri'


def scrap_nom
nom_crypto=[]
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//td[2]/a').each do |nom|
nom_crypto << nom.text
end
return nom_crypto
end


def scrap_value
value_crypto=[]
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//td[5]/a').each do |nom|
value_crypto << nom.text.delete("$,").to_f.round(2)
end
return value_crypto
end


def hash(nom, value)
tab = nom
#tab2 = value
return tab
end


def perform
puts scrap_nom
puts scrap_value
put hash(scrap_nom, scrap_value)
end

perform

#     ruby lib/coin3.rb
