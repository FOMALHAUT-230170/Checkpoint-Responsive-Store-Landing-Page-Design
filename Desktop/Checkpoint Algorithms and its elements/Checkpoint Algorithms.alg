Algorithme Analyse_Phrase
Variables
    car : Caractère
    longueur : Entier      // Compteur pour la longueur de la phrase
    nb_mots : Entier       // Compteur pour le nombre de mots
    nb_voyelles : Entier   // Compteur pour le nombre de voyelles
Début
    // Initialisation des trois compteurs demandés
    longueur <- 0
    nb_mots <- 0
    nb_voyelles <- 0

    Écrire("Veuillez saisir votre phrase caractère par caractère (terminez par un point) :")

    Répéter
        Lire(car)
        
        // 1. Calcul de la longueur (on compte chaque caractère lu)
        longueur <- longueur + 1
        
        // 2. Calcul du nombre de voyelles (gère les minuscules et majuscules)
        Si car = 'a' Ou car = 'e' Ou car = 'i' Ou car = 'o' Ou car = 'u' Ou car = 'y' Ou
           car = 'A' Ou car = 'E' Ou car = 'I' Ou car = 'O' Ou car = 'U' Ou car = 'Y' Alors
            nb_voyelles <- nb_voyelles + 1
        FinSi
        
        // 3. Calcul du nombre de mots (si on trouve un espace, un mot vient de se terminer)
        Si car = ' ' Alors
            nb_mots <- nb_mots + 1
        FinSi

    Jusqu'à ce que car = '.' // Condition d'arrêt : le dernier caractère est le point

    // Ajustement pour le dernier mot : la phrase se termine par un point et non un espace.
    // Si la phrase contient au moins un caractère (le point), il y a au moins 1 mot.
    Si longueur > 1 Alors
        nb_mots <- nb_mots + 1
    FinSi

    // Affichage des résultats finaux
    Écrire("La longueur de la phrase est : ", longueur, " caractères.")
    Écrire("Le nombre de mots est : ", nb_mots)
    Écrire("Le nombre de voyelles est : ", nb_voyelles)
Fin
