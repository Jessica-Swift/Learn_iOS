import SwiftUI

var isCool = false
 
 print(isCool)
 
 isCool = !isCool
 print(isCool)
 
 isCool = !isCool
 print(isCool)

var people = "Haters"
let action = "hate"

let lyrics = people + " gonna " + action
print(lyrics)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


let employee = ["name" : "Taeeun", "job" : "App Developer", "location" : "Hamburg"]
print(employee["name"])
