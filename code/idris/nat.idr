module nat

import bool
import pair
import eq
import Serialize

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)


||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O n = n
add (S n) m = S (add n m)

pf: nat -> nat
pf = add (S (S O))

||| given a pair of natural numbers, return its product
mult: nat -> nat -> nat
mult O n = O
mult (S n) m = add m (mult n m)

||| given a pair of natural numbers, return its factorial
fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

||| given a pair of natural numbers, return its difference
sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

||| given a pair of natural numbers, (x, n), return the value of x raised to the nth power
exp: nat -> nat -> nat
exp x O = S O
exp O n = O
exp x (S n) = mult x (exp x n)

||| given a pair of natural numbers, return true if a <= b, otherwise false
le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

||| given a pair of natural numbers, (a, b), return true if a is equal to b, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O m = false
eql_nat n O = false
eql_nat (S n) (S m) = eql_nat n m

||| given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt n m = not (le n m)

||| given a pair of natural numbers, (a, b), return true of a is greater than or equal to b
ge: nat -> nat -> bool
ge n m = or (gt n m) (eql_nat n m)

||| given a pair of natural numbers, (a, b), return true if a is less than b
lt: nat -> nat -> bool
lt n m = not (ge n m)

||| given a natural number,(n) return the nth value in the Fibonacci sequence
fib: nat -> nat
fib O = O
fib (S O) = S O
fib (S (S O)) = (S O)
fib (S (S (S n))) = add (fib (S (S n))) (fib (S n))

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
