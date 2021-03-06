import Foundation

//1. Créez une fonction qui affichera bonjour à un nom reçu en paramètre
func hello(nom:String) -> String {
    return ("bonjour \(nom)")
}

print(hello(nom:"Brice Gnanago"))

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
// print(numbers)


//3. Créer une fonction qui calcule le périmètre d’un quadrilatère reçu en paramètre
//3. Créer une fonction qui calcule le périmètre d’un quadrilatère reçu en paramètre
func perimetre(long:Int,larg:Int) -> String {
    let perimetre = 2*(larg+long)
    return ("Le perimetre du quadrilatere longeur \(long)cm,et de largeur \(larg)cm est de : \(perimetre) cm")
}


print(perimetre(long:5,larg:100))