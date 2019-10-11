require 'nokogiri'
require 'open-uri'
require 'rspec'

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


def result
names = scrap_nom
values = scrap_value
result = []

result_hash = names.map.with_index do |name, index|
       new_hash = {}
       new_hash[name] = values[index]
       new_hash
   end

   return new_hash
end


def perform
scrap_nom
scrap_value
result
end

perform

#     ruby lib/coin3.rb
