require 'rubygems'
require 'nokogiri'
require 'open-uri'

def clean_crypto_values_array(crypto_values_array)
  crypto_values_array.map! {|current| current[1, current.length-1].delete(",").to_f }
end

def scrapp_crypto()
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  crypto_name_array =[]
  crypto_values_array =[]
  crypto_hash ={}

  page.xpath("//tr[contains(@class,'cmc-table-row')]//td[contains(@class,'cmc-table__cell--sort-by__name')]//a[2]").each { |current| crypto_name_array.push(current.text)}
  page.xpath("//tr[contains(@class,'cmc-table-row')]//td[contains(@class,'cmc-table__cell--sort-by__price')] ").each { |current| crypto_values_array.push(current.text)}

  crypto_values_array = clean_crypto_values_array(crypto_values_array)

  crypto_name_array.each_index do |index|
    crypto_hash[crypto_name_array[index]] = crypto_values_array[index]
  end
  crypto_hash
end

def transform_Hash_to_Array(crypto_hash)
  crypto_array = []
  crypto_hash.each do |key, value|
    current_hash = { key => value}
    crypto_array.push(current_hash)
  end
  crypto_array
end

def process()
  print "\n" * 2; puts (" " * 20) + "CRYPTO SCRAPPER" ; print "\n" * 2
  puts "Tu veux du Hash :"
  puts scrapp_crypto()
  print "\n" * 2 ; puts  "Tu veux du Array :"
  print transform_Hash_to_Array(scrapp_crypto())
  print "\n" * 2
end

process()
