module friend

import bool

||| a friend is someone who is or isnt trustworthy, who has a name and an age in years
data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Will" 10

f2: friend
f2 = mkFriend false "Amy" 19

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b
