module natTest

import nat
import bool
import pair
import Serialize

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- four
f: nat
f = S r

-- five
i: nat
i = S f

x: bool
x = (isZero r)

y: nat
y = (succ z)

a: bool
a = (evenb O)

b: bool
b = (evenb (S O))

c: bool
c = (evenb (S (S O)))

d: bool
d = (evenb r)

e: bool
e = (evenb (S r))

||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))

||| a test, expecting (S (S (S (S (S (S O))))))
h5: nat
h5 = mult (S (S O)) (S (S (S O)))

||| a test, expecting (S O)
h6: nat
h6 = fact O

||| a test, expecting (S (S (S (S (S (S O))))))
h7: nat
h7 = fact (S (S (S O)))

||| a test, expecting O
h8: nat
h8 = sub t i

||| a test, expecting S (S O)
h9: nat
h9 = sub f t

||| a test, expecting S (S (S (S (S (S (S (S O)))))))
k1: nat
k1 = exp t r

||| a test, expecting (S O)
k2: nat
k2 = exp t O

||| a test, expecting (S O)
k3: nat
k3 = exp O O

||| a test, expecting true
k4: bool
k4 = le r r

||| a test, expecting false
k5: bool
k5 = le t O

||| a test, expecting true
k6: bool
k6 = le o r

||| a test, expecting true
k7: bool
k7 = eql_nat i i

||| a test, expecting false
k8: bool
k8 = eql_nat t O

||| a test, expecting false
k9: bool
k9 = gt t t

||| a test, expecting true
j1: bool
j1 = gt f O

||| a test, expecting false
j2: bool
j2 = gt t r

||| a test, expecting true
j3: bool
j3 = ge f f

||| a test, expecting false
j4: bool
j4 = ge t f

||| a test, expecting false
j5: bool
j5 = lt O O

||| a test, expecting false
j6: bool
j6 = lt i r

||| a test, expecting O
j7: nat
j7 = fib O

||| a test, expecting S O
j8: nat
j8 = fib (S O)

||| a test, expecting (S (S (S (S (S O)))))
j9: nat
j9 = fib i

s: String
s = toString j9
