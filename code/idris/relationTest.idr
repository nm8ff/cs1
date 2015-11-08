module relationTest

import bool
import pair
import list
import Person
import PersonTest
import relation

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))

years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

names'': String
names'' = query2 people gender name (++) ""

number: Nat
number = query2 people gender countOne plus 0

aveAge: pair Nat Nat
aveAge = mkPair 
           (query2 people gender age plus 0) 
           (query2 people gender countOne plus 0)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age

aveHeight: pair Nat Nat
aveHeight = ave_rel people gender height
