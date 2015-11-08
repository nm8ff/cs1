module dnaTest

import nat
import pair
import list
import dna

-- expect G
a1: base
a1 = complement_base C

-- expect A
a2: base
a2 = complement_base T

-- expect C
a3: base
a3 = complement_base G

-- expect G :: C :: A :: A :: nil
a4: list base
a4 = complement_strand (C :: G :: T :: T :: nil)

-- expect T :: T :: C :: nil
a5: list base
a5 = complement_strand (A :: A :: G :: nil)

-- expect A :: G :: G :: nil
a6: list base
a6 = strand1 ((mkPair A T) :: (mkPair G C) :: (mkPair G C) :: nil)

-- expect T :: G :: A :: A
a7: list base
a7 = strand1 ((mkPair T A) :: (mkPair G C) :: (mkPair A T) :: (mkPair A T) :: nil)

-- expect T :: C :: C :: nil
a8: list base
a8 = strand2 ((mkPair A T) :: (mkPair G C) :: (mkPair G C) :: nil)

-- expect A :: C :: T :: T :: nil
a9: list base
a9 = strand2 ((mkPair T A) :: (mkPair G C) :: (mkPair A T) :: (mkPair A T) :: nil)

-- expect mkPair A T :: mkPair T A :: mkPair T A :: mkPair G C :: nil
b1: list (pair base base)
b1 = complete (A :: T :: T :: G :: nil)

-- expect mkPair C G :: mkPair G C :: mkPair T A :: mkPair T A :: mkPair A T :: nil
b2: list (pair base base)
b2 = complete (C :: G :: T :: T :: A :: nil)

-- expect (S(S(S O)))
b3: nat
b3 = countBase (A :: G :: A :: C :: C :: A :: nil) A

-- expect (S(S(S O)))
b4: nat
b4 = countBase (T :: G :: G :: A :: C :: nil) G
