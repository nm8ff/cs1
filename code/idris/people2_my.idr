module people2

import pair

data people = mary | maurice

love: pair person person -> person
love (mkPair mary maurice) = maurice
love (mPair2 maurice mary) = maurice
