module listTest

import bool
import pair
import nat
import list
import Serialize

lO: list nat
lO = nil

l1: list nat
l1 = O :: nil

l2: list nat
l2 = (S O) :: (S (S O)) :: nil

l3: list nat
l3 = (S O) :: (S (S O)) :: (S (S (S O))) :: nil

-- expect O
k1: nat
k1 = length (lO)

--expect (S (S O))
k2: nat
k2 = length l2

-- expect (S (S (S O)))
k3: nat
k3 = length l3

--expect (S O) :: (S (S O)) :: (S O) :: (S (S O)) :: (S (S (S O))) ::  nil
k4: list nat
k4 = l2 ++ l3

-- expect O :: nil
k5: list nat
k5 = l1 ++ lO

-- expect (S O) :: (S (S O)) :: (S O) :: (S (S O)) :: nil
k6: list nat
k6 = l2 ++ l2

-- expect true :: false :: true :: true :: nil
k7: list bool
k7 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

-- expect O :: (S (S O)) :: (S (S (S (S O)))) :: nil
k8: list nat
k8 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

s: String
s = toString k8
