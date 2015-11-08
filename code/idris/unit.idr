module unit

import bool
import eq
import Serialize

data unit = mkUnit

unit_id: unit -> unit
unit_id mkUnit = mkUnit

-- only one vaue of type unit so they must be equal, so value will
  -- always be true and we dont need to define a separate function
instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
