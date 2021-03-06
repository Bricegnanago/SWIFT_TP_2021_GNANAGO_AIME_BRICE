import Foundation

let year = Calendar.current.component(.year, from: Date())
print("On est en \(year)")
// Question 1
// let person : ([String:String], [String: String], [String:Int])()
var person:(String:String, [String:String], [String:Int])

var persons = [
    ["nom":"Pierre","sexe":"M", "annee_naissance":2010],
    ["nom":"Michelle", "sexe":"F", "annee_naissance":2014],
    ["nom":"Estelle", "sexe":"F", "annee_naissance":2005],
    ["nom":"Quentin", "sexe":"M", "annee_naissance":2020],
    ["nom":"Francois", "sexe":"M", "annee_naissance":1980],
    ["nom":"Cristelle", "sexe":"F", "annee_naissance":1995]
]


func sexe (sex:String) -> String{
    return (sex == "M") ? "Garcon": "Fille"
}

// 2) Question 2

print("\n------------------------------------------------------------------")
print("\n-------Affichez le nom de toutes les personnes concaténés---------")
print("\n------------------------------------------------------------------")
for person in persons{
    var sex = person["sexe"]!
    sex = sexe(sex:"\(sex)")
    print("\(person["nom"]!) \(person["nom"]!) est ne en \(person["annee_naissance"]!) c'est un \(sex)")
}


//3.Affichez le nom de toutes les personnes majeures
func isMajeur(naissance:Int) -> Bool {
    return ((year - naissance) >= 18) ? true : false
}

// print(isMajeur(naissance:2004))

print("\n----------------------------------------------------------------")
print("\n-------Affichez le nom de toutes les personnes majeures---------")
print("\n----------------------------------------------------------------")

for person in persons{ 
    let valeur = (person["annee_naissance"]!)
    let valeurs:Int = valeur as! Int    
    // print (valeurs)
    // let age = year - valeurs
    // print (age)
    if(isMajeur(naissance:valeurs)){
        print("\(person["nom"]!)")
    }
}


//4.Trouvez toutes les filles/garçons de la liste

// func  (sex:String) -> String{
//     return (sex == "M") ? "Garcon": "Fille"
// }
print("\n----------------------------------------------------------------")
print("\n-------Trouvez toutes les filles/garçons de la liste------------")
print("\n----------------------------------------------------------------")

for person in persons{
    var sex = person["sexe"]!
    sex = sexe(sex:"\(sex)")
    print("\(person["nom"]!) - \(sex)")
}

persons.append(["nom":"Gnanago", "sexe":"M", "annee_naissance":1995])

print("\n------------------------------")
print("\n-------Nouvelle table---------")
print("\n------------------------------")
for person in persons{
    var sex = person["sexe"]!
    sex = sexe(sex:"\(sex)")
    print("\(person["nom"]!) - \(sex)")
}

//6.Trouvez toutes les personnes nés avant/après 2000

func isBefore2000(annee:Int) -> Bool{
    return (annee < 2000) ? true : false
}

//6.Trouvez toutes les personnes nés avant/après 2000
print("\n-----------------------------------------------------------------")
print("\n-------Trouvez toutes les personnes nés avant/après 2000---------")
print("\n-----------------------------------------------------------------")

for person in persons{ 
    let valeur = (person["annee_naissance"]!)
    let valeurs:Int = valeur as! Int        
    if(isBefore2000(annee:valeurs)){
        print("\(person["nom"]!) -- \(person["annee_naissance"]!) -- Nee avant 2000")
    }else{
        print("\(person["nom"]!) -- \(person["annee_naissance"]!)-- Nee après 2000")
    }
}