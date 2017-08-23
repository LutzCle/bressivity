# Projet de jeu de carte "Timeline Informatique"

Réalisé pour la fête de la science 2017 au département informatique de l'Université Claude Bernard Lyon 1.

## Modèle de carte LaTeX

Le modèle de carte LaTeX est adapté de celui de Arvid. Il utilise tikz, voir les fichiers [./latex/tikzcards.tex](./latex/tikzcards.tex) et [./latex/packages.tex](./latex/packages.tex)

 * https://tex.stackexchange.com/questions/47924/creating-playing-cards-using-tikz
 * https://tex.stackexchange.com/questions/243740/print-double-sided-playing-cards
 
## Contenu et description des cartes
 
Les cartes sont créées à partir d'un fichier csv au format id,type,title,year,picture,credits,description,credits_color.
 
 * *id* : le numéro de la carte, n'apparait pas sur la carte
 * *type* : sont type à choisir dans *pop, hard, soft, lang, theory, game, web, univ* (apparait verticalement sur la gauche de la carte)
 * *tile* : le nom de l'invention, de l'événement, de la personne ...
 * *year* : l'année de découverte (apparait avec le texte de la description au verso de la carte)
 * *picture* : une url vers une image dans un format supporté par pdfLaTeX
 * *credits* : crédits de l'illustration (apparait au recto de la carte uniquement)
 * *description* : court texte (apparait au verso de la carte)
 * *credits_color* : couleur dans laquelle rendre les crédits de l'illustration
 
 
## Génération des cartes

Le script javascript [build.js](build.js) va parser le fichier csv de description pour :

 - (-d) télécharger les images
 - (-r) les recadrer
 - (-g) générer les .tex des cartes individuelles (un .tex pour le recto, un .tex pour le verso)
 - (-1) générer le jeu de cartes avec une face par page
 - (-9) générer le jeu de cartes avec neuf faces par page
 
Exécuter `nodejs build.js --help` pour l'aide.

Ensuite, il faut compiler les fichiers .tex avec pdfLaTeX, voir le fichier [Makefile](./Makefile)
 
## Jeu de test

Le dossier [test_deck](test_deck) comprend quelques cartes de test.

