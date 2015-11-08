module PersonTest

import bool
import list
import Person

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3 false 70

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

a: Person
a = MkPerson "Sally" 5 true 63

b: Person
b = MkPerson "Jeff" 38 false 72

c: Person
c = MkPerson "Amy" 22 true 60

people: list Person
people = p :: a :: b :: c :: nil
