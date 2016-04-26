require 'httparty'
require 'Nokogiri'

response = HTTParty.get "http://finance.yahoo.com/q?s=AAPL"

# p response.body.class
# puts "____________________"

mofo = Nokogiri::HTML(response.body)
# p mofo.class

motherlover = mofo.xpath("//span[@id='yfs_l84_aapl']").first
motherlover = motherlover.content
additional = mofo.xpath("//td[@class='yfnc_tabledata1']").first
additional = additional.content


puts "$#{motherlover}"
puts "$#{additional}"

puts "Give me a ticker!"

ticker = gets.chomp #CHOMP IT UP

response2 = HTTParty.get "http://finance.yahoo.com/q?s=#{ticker.upcase}"
mofo2 = Nokogiri::HTML(response2.body)
your_ticker = mofo2.xpath("//span[@id='yfs_l84_#{ticker.downcase}']").first
your_ticker = your_ticker
p your_ticker.content
# puts "$#{your_ticker}"
