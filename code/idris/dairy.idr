module dairy

import nat
import list
import pair

data dairyType = MilkCream | Butter | Cheese | Frozen | Dry
||| a record of the availability of a dairy product per capita (in pounds) times 10 for 1970, 1980, 1990, 2000, and 2012
data dairyRow = mkDairyRow dairyType Nat Nat Nat Nat Nat

milk: dairyRow
milk = mkDairyRow MilkCream 2738 2450 2328 2099 1988

butter:dairyRow
butter = mkDairyRow Butter 54 45 44 45 56

cheese: dairyRow
cheese = mkDairyRow Cheese 164 219 279 325 360

frozen: dairyRow
frozen = mkDairyRow Frozen 258 239 261 281 239

dry: dairyRow
dry = mkDairyRow Dry 177 105 116 90 116

-- Projection Functions
dairyName: dairyRow -> dairyType
dairyName (mkDairyRow a b c d e f) = a

poundsx10in1970: dairyRow -> Nat
poundsx10in1970 (mkDairyRow a b c d e f) = b

poundsx10in1980: dairyRow -> Nat
poundsx10in1980 (mkDairyRow a b c d e f) = c

poundsx10in1990: dairyRow -> Nat
poundsx10in1990 (mkDairyRow a b c d e f) = d

poundsx10in2000: dairyRow -> Nat
poundsx10in2000 (mkDairyRow a b c d e f) = e

poundsx10in2012: dairyRow -> Nat
poundsx10in2012 (mkDairyRow a b c d e f) = f

-- list of records
dairyData: list dairyRow
dairyData = milk :: butter :: cheese :: frozen :: dry :: nil

-- field override functions
update1970: pair dairyRow Nat -> dairyRow
update1970 (mkPair (mkDairyRow a b c d e f) x)  = mkDairyRow a x c d e f

update1980: pair dairyRow Nat -> dairyRow
update1980 (mkPair (mkDairyRow a b c d e f) x)  = mkDairyRow a b x d e f

update1990: pair dairyRow Nat -> dairyRow
update1990 (mkPair (mkDairyRow a b c d e f) x)  = mkDairyRow a b c x e f

update2000: pair dairyRow Nat -> dairyRow
update2000 (mkPair (mkDairyRow a b c d e f) x)  = mkDairyRow a b c d x f

update2012: pair dairyRow Nat -> dairyRow
update2012 (mkPair (mkDairyRow a b c d e f) x)  = mkDairyRow a b c d e x
