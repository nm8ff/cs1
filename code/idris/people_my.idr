module people

data people = mary | maurice

love: people -> people
love mary = maurice
love maurice = maurice

