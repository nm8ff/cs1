module listExample

import bool
import pair
import list
import relation
import icecream

van: icecream
van = mkIcecream "Vanilla" 3 false

straw: icecream
straw = mkIcecream "Strawberry" 2 true

choco: icecream
choco = mkIcecream "Chocolate" 2 false

mint: icecream
mint = mkIcecream "Mint" 1 false

coffee: icecream
coffee = mkIcecream "Coffee" 1 true

iceData: list icecream
iceData = van :: straw :: choco :: mint :: coffee :: nil

-- examples of use of projection functions using record type
f: String
f = flavor van
-- expect " Vanilla"

s: Nat
s = scoops coffee
-- expect 1

c: bool
c = cone mint
-- expect false

--exapmles of use of map function

q: list String
q = map flavor iceData

r: list Nat
r = map scoops iceData

w: list bool
w = map cone iceData

-- examples of relation functions

coneScoops: Nat
coneScoops = query2 iceData cone scoops plus 0

coneFlavors: String
coneFlavors = query2 iceData cone flavor (++) ""

coneNumber: Nat
coneNumber = query2 iceData cone countOne plus 0

avgConeScoops: pair Nat Nat
avgConeScoops = ave_rel iceData cone scoops
