module bool

import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

-- binary function, implicit

and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

nand: bool -> bool -> bool
nand a b = not (and a b)

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
