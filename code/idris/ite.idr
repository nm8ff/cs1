module ite

import bool
import nat

||| if then else function
ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb
