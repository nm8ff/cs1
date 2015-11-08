module Person

import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat
    gender : bool
    height : Nat

-- record { fieldName = value } for field override
setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

setGender: Person -> bool -> Person
setGender p g = record { gender = g } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p
