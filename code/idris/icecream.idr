module icecream

import bool
import relation

||| A record type representing ice cream has a flavor, a certain number of scoops, and a cone or no cone.

record icecream where
    constructor mkIcecream
    flavor : String
    scoops : Nat
    cone : bool

a: icecream
a = mkIcecream "chocolate" 2 true

t: String
t = flavor a
-- expect "chocolate"

n: Nat
n = scoops a
-- expect 2

x: bool
x = cone a
-- expect true
