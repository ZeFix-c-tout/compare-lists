# List-compare_script
This batch script can compare 2 list. Verify the correspondance between both list

UTILISATION DU SCRIPT:

Ce script vient analyser deux fichiers .txt et remonte dans un fichier log.txt s'il y a une différence.

**Dans les fichiers txt 'liste1' et 'liste2' Ne pas oublier à la fin de mettre une ligne vide, sinon la dernière sera remonté comme erreur.**

**Ne pas avoir plusieurs éléments de comparaison sur la même ligne, chaque éléments de comparaison fais l'objet d'une seule est même ligne**

**Chaque fois que le script est exécuté, ce dernier supprime l'ancien fichier log.txt**

**Chaque espace en trop sur une même ligne est pris en compte et peut donc être interprété comme une erreur**

**Une double verification est effectué avec les variables (%t1% & %t2%) le fichiers liste1.txt par rapport au fichier liste2.txt et inversement

**Creation automatique fichiers liste1.txt et liste2.txt si pas existant
