#!/usr/bin/env ruby
# Indique que le script sera exécuté en utilisant l'interpréteur Ruby

require 'launchy' 
# Importe la bibliothèque Launchy, qui nous permet d'ouvrir des URL dans un navigateur

puts "Qu'est-ce que vous voulez chercher sur Google ?"
search_terms = gets.chomp.split.join("+")
# Demande à l'utilisateur de saisir sa chaîne de recherche, puis la combine en un seul chaîne de recherche, en les séparant par des +

if search_terms.empty?
 puts "Usage: ruby search.rb <search>"
 exit
# Si aucune chaîne de recherche n'a été fournie, affiche un message d'utilisation et quitte le script
end

search_url = "https://www.google.com/search?q=#{search_terms}"
# Construit l'URL de recherche en concaténant la chaîne de recherche à l'URL de Google

Launchy.open(search_url)
# Ouvre l'URL de recherche dans le navigateur par défaut de l'utilisateur

# Crée l'alias pour l'exécution du script
system('alias google="ruby /home/jakfamily/googlesearcher/search.rb"')
system('google')
