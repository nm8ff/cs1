module dna

import nat
import pair
import list

data base = A | T | G | C

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G

complement_strand: list base -> list base
complement_strand a = map complement_base a

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b) :: t) = (a :: (strand1 t))

strand2: list (pair base base) -> list base
strand2 a = complement_strand (strand1 a)

X: base -> pair base base
X h = (mkPair h (complement_base h))

complete: list base -> list (pair base base)
complete a  = map X a

idBase: base -> base -> nat
idBase A A = S O
idBase G G = S O
idBase T T = S O
idBase C C = S O
idBase _ _ = O

countBase: list base -> base -> nat
countBase nil b = O
countBase a b = list.foldr add O (map (idBase b) a)
