# SWIFT_TP_2021_GNANAGO_AIME_BRICE


## Exercice 1 (Dictionnaire)
```swift
import Foundation

let year = Calendar.current.component(.year, from: Date())
```

### Question 1
```swift
var person:(String:String, [String:String], [String:Int])

var persons = [
    ["nom":"Pierre","sexe":"M", "annee_naissance":2010],
    ["nom":"Michelle", "sexe":"F", "annee_naissance":2014],
    ["nom":"Estelle", "sexe":"F", "annee_naissance":2005],
    ["nom":"Quentin", "sexe":"M", "annee_naissance":2020],
    ["nom":"Francois", "sexe":"M", "annee_naissance":1980],
    ["nom":"Cristelle", "sexe":"F", "annee_naissance":1995]
]
```

### Question 2
> Affichez le nom de toutes les personnes concaténés

```swift
func sexe (sex:String) -> String{
    return (sex == "M") ? "Garcon": "Fille"
}

for person in persons{
    var sex = person["sexe"]!
    sex = sexe(sex:"\(sex)")
    print("\(person["nom"]!) \(person["nom"]!) est ne en \(person["annee_naissance"]!) c'est un \(sex)")
}

```


### Question 3
> 3.Affichez le nom de toutes les personnes majeures

```swift
func isMajeur(naissance:Int) -> Bool {
    return ((year - naissance) >= 18) ? true : false
}

for person in persons{ 
    let valeur = (person["annee_naissance"]!)
    let valeurs:Int = valeur as! Int    
    if(isMajeur(naissance:valeurs)){
        print("\(person["nom"]!)")
    }
}

```

### Question 4
> Trouvez toutes les filles/garçons de la liste

```swift
for person in persons{
    var sex = person["sexe"]!
    sex = sexe(sex:"\(sex)")
    print("\(person["nom"]!) - \(sex)")
}

```
### Question 5
> Ajouter une persone à cette liste
```swift
persons.append(["nom":"Gnanago", "sexe":"M", "annee_naissance":1995])
```
### Question 6
> Trouvez toutes les personnes nés avant/après 2000
```swift
for person in persons{ 
    let valeur = (person["annee_naissance"]!)
    let valeurs:Int = valeur as! Int        
    if(isBefore2000(annee:valeurs)){
        print("\(person["nom"]!) -- \(person["annee_naissance"]!) -- Nee avant 2000")
    }else{
        print("\(person["nom"]!) -- \(person["annee_naissance"]!) -- Nee après 2000")
    }
}
```


## Exercice 2 (Les fonctions)

### Question 1
> Créez une fonction qui affichera bonjour à un nom reçu en paramètre

```swift
func hello(nom:String) -> String {
    return ("bonjour \(nom)")
}

print(hello(nom:"Brice Gnanago"))
```
### Question 2
> Créez une fonction qui calcule la moyenne d’une liste de nombres reçue en paramètre
```swift
var numbers = [Int]()
numbers = [160, 161,162,163,164,165,166,167,168,169,
        170,171,172,173,174,175,176,177,178,179
        ]

var total = 0
for i in 0..<numbers.count{
    total = total + numbers[i]
}
let moyenne = total / (numbers.count)

print("La moyenne de cette liste est : \(moyenne)")

```
### Question 3
> Créer une fonction qui calcule le périmètre d’un quadrilatère reçu en paramètre

```swift
func perimetre(long:Int,larg:Int) -> String {
    let perimetre = 2*(larg+long)
    return ("Le perimetre du quadrilatere longeur \(long)cm,et de largeur \(larg)cm est de : \(perimetre) cm")
}
print(perimetre(long:5,larg:100))
```