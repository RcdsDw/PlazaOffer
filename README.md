## Projet React CDA P4 "Plaza Offer"

"Plaza Offer" est une application permettant de voir les différentes offres dans une zone donnée à l'aide de l'api Leaflet.


## Détails

- Affichage des offres en temps réel.
- Affichage des offres lié aux marqueurs et rafrachissement de ces derniers en fonction des déplacements ou du zoom sur la carte.
- Possibilité de rechercher une ville via une barre de rechercher et de n'afficher que cette dernière sur la carte.

## Technos Utilisées

- HTML 5
- CSS 3
- JavaScript
- React.js
- PHP
- SQL

## Installation

Pour profiter de l'application voici quelques petites choses à préparer : 

- Commencer par cloner le repository de l'App, vous mettre sur le fichier et installer les node_modules 
    - dans le terminal :  - git clone https://github.com/RcdsDw/PlazaOffer.git ,
                          - cd plaza-offer ,
                          - npm i / npm install

- Avoir [PHP](https://fr.legacy.reactjs.org/docs/getting-started.html) dans sa dernière version.

- Installation de la base de données via le fichier [annonces_immobiliere.sql](https://github.com/RcdsDw/PlazaOffer/blob/main/docs/annonces_immobiliere.sql) dans le dossier "docs" de l'App.

- Importer ce dernier dans un logiciel comme "wamp" ou "xamp" par exemple.

- Cloner le repository de l'[api](https://github.com/RcdsDw/Api-PlazaOffer/tree/main) 
    - dans le terminal : git clone https://github.com/RcdsDw/Api-PlazaOffer.git

- Changer le [lien de l'api](https://github.com/RcdsDw/PlazaOffer/blob/main/src/datas/datas.jsx) dans l'app pour correspondre avec l'endroit ou vous l'avez placé.