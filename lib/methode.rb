require 'nokogiri'
require 'open-uri'

def nom
nom_crypto=[]
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//td[2]/a').each do |nom|
nom_crypto << nom.text
end
puts nom_crypto
return nom_crypto
end




def value
 b=[3, 4]
return b
end


def hash(m, n)
puts tab = "#{m} && #{n}"
#tab2 = value
return tab
end


def perform
puts nom
puts value
puts hash(nom, value)
end

perform



#            ruby lib/coin4.rb
