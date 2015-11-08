module mood

import bool
import pair

data mood = happy | sad

good: pair mood mood ->  bool
good (mkPair happy happy) = true
good (mkPair happy sad) = false
good (mkPair sad happy) = false
good (mkPair sad sad) = false

b1: pair mood mood
b1 = mkPair happy sad


