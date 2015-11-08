module set_adt_test

import bool
import option
import pair
import list
import nat
import eq
import Serialize
import ite
import set_adt_hw

-- example sets
s0: set nat
s0 = mkSet nil

s1: set nat
s1 = mkSet (O :: nil)

s2: set nat
s2 = mkSet ((S O) :: nil)

s3: set nat
s3 = mkSet ((S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

s4: set nat
s4 = mkSet ((S (S O)) :: (S (S (S O))) :: (S (S (S (S (S (S O)))))) :: nil)

s5: set nat
s5 = mkSet (O :: (S (S (S O))) :: (S (S (S (S O)))) :: nil)

s6: set bool
s6 = mkSet (true :: nil)

s7: set bool
s7 = mkSet (true :: false :: nil)

s8: set bool
s8 = mkSet (false :: nil)

-- test cases

empty1: bool
empty1 = isEmpty s0
-- expect true

empty2: bool
empty2 = isEmpty s2
-- expect false

insert1: set nat
insert1 = set_insert (S (S O)) s1
-- expect mkSet (S (S O) :: O :: nil)

remove1: set nat
remove1 = set_remove (S O) s3
-- expect mkSet (S (S O) :: S (S (S (S O))) :: nil)

remove2: set nat
remove2 = set_remove O s3
-- expect mkSet (S O :: S (S O) :: S (S (S (S O))) :: nil)

card1: nat
card1 = set_cardinality s1
-- expect S O

card2: nat
card2 = set_cardinality s4
-- expect S (S (S O))

mem1: bool
mem1 = set_member (S O) s4
-- expect false

mem2: bool
mem2 = set_member (S (S O)) s4
-- expect true

un1: set nat
un1 = set_union s3 s5
-- expect mkSet (S O :: S (S O) :: O :: S (S (S O)) :: S (S (S (S O))) :: nil)

un2: set nat
un2 = set_union s2 s4
-- expect mkSet (S O :: S (S O) :: S (S (S O)) :: S (S (S (S (S (S O))))) :: nil)

inter1: set nat
inter1 = set_intersection s2 s5
-- expect mkSet nil

inter2: set bool
inter2 = set_intersection s6 s7
-- expect mkSet (true :: nil)

diff1: set nat
diff1 = set_difference s4 s1
-- expect mkSet (S (S O) :: S (S (S O)) :: S (S (S (S (S (S O))))) :: nil)

diff2: set nat
diff2 = set_difference s5 s3
-- expect mkSet (O :: S (S (S O)) :: nil)

forall1: bool
forall1 = set_forall evenb s1
-- expect true

forall2: bool
forall2 = set_forall evenb s5
-- expect false

exist1: bool
exist1 = set_exists isZero s1
-- expect true

exist2: bool
exist2 = set_exists isZero s4
-- expect false

wit1: option nat
wit1 = set_witness evenb s1
-- expect some O

wit2: option nat
wit2 = set_witness isZero s4
-- expect none

prod1: set (pair nat nat)
prod1 = set_product s2 s4
-- expect mkSet (mkPair (S O) (S (S O)) :: mkPair (S O) (S (S (S O)))
  -- ::  mkPair (S O) (S (S (S (S (S (S O)))))) :: nil)

prod2: set (pair nat nat)
prod2 = set_product s3 s5
-- expect mkSet (mkPair (S O) O :: mkPair (S O) (S (S (S O))) ::
  -- mkPair (S O) (S (S (S (S O)))) :: mkPair (S (S O)) O :: mkPair (S (S O)) (S (S (S O))) :: mkPair (S (S O)) (S (S (S (S O)))) :: mkPair (S (S (S (S O)))) O :: mkPair (S (S (S (S O)))) (S (S (S O))) :: mkPair (S (S (S (S O)))) (S (S (S (S O)))) :: nil)

prod3: set (pair bool bool)
prod3 = set_product s7 s8
-- expect mkSet (mkPair true false :: mkPair false false :: nil)

eq1: bool
eq1 = eql s2 s3
-- expect false

eq2: bool
eq2 = eql s6 (mkSet (true :: nil))
-- expect true

string1: String
string1 = toString s3
-- expect "{|Z, ||Z, ||||Z}"

string2: String
string2 = toString s7
-- expect "{True, False}"
