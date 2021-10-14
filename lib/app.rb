require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("lib/index.html"))
puts page.css('//div/*').text


#     Si tu veux récupérer tous les liens d'une page, tape page.xpath('//a'). Pour tous les titres h1, utilise page.xpath('//h1')
#     Si tu veux récupérer les liens situés sous un titre h1 (même s'ils sont inclus dans un paragraphe, lui-même imbriqué dans une div), tape page.xpath('//h1//a').
#     Si tu veux récupérer les liens situés DIRECTEMENT sous un titre h1 (sans élément intermédiaire), tape page.xpath('//h1/a').
#     Si tu veux récupérer TOUS les éléments HTML situés DIRECTEMENT sous un titre h1, tape page.xpath('//h1/*').
#     Si tu veux récupérer le lien ayant l'id email situé sous un titre h1 de classe primary, tape page.xpath('//h1[@class="primary"]/a[@id="email"]').
#     Si tu veux récupérer tous les liens dont le href contient le mot "mailto", tape page.xpath('//a[contains(@href, "mailto")]').
#
# Ensuite, tu veux récupérer le texte de chaque lien ? Il faut parcourir l'array et extraire le .text de chaque élément HTML
