require 'watir'
#Tout sur Watir>> http://watir.com/docs/elements/

#Méthode pour accéder à Google
browser = Watir::Browser.new(:chrome)
browser.goto 'https://www.facebook.com/groups/295885777409383/members/'


#Méthode pour se connecter sur Facebook
		log_in_to_facebook = browser.text_field(id: 'email')
		log_in_to_facebook.set("mister_ugoboss@msn.com")

		log_in_to_facebook = browser.text_field(id: 'pass')
		log_in_to_facebook.set("hugohennequin19949+")

	log_in_to_facebook.send_keys(:enter)

#Méthode pour demander du temps de repos // Que la page se charge bien
browser.driver.manage.timeouts.implicit_wait = 10

#Méthode pour afficher la suite de la liste d'ami
see_more = browser.link text: 'Afficher la suite'
see_more.click
#Seconde méthode pour afficher la suite de la liste d'ami
#browser.link(:text 'Afficher la suite').when_present.click

sleep 10 

search_result_divs = browser.divs(class: '_6a _5u5j')
search_result_divs.each { |div| p "Nom: " + div.a.text + "// Url: " + div.a.href}

#Suggestion de présentation
#search_result_divs.each { |div| p "Nom: " + div.a.text + "// Url: " + div.a.href}



while(true)

# #Le end est à maintenir que si on garde la boucle (while)

end 

browser.close
