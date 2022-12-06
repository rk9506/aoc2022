load 'utils.ijs'

s =: readfile 'day6input.txt'

isUnique =: monad : '(#~.y) = #y'
packets =: dyad : 'x {."(0 1) (i. (# y) - x) }."(0 _) y'

findMsg =: dyad define 
  strs =: x packets y
  x + {. 1 i.~ isUnique"1 strs
)

part1 =: 4 findMsg s
part2 =: 14 findMsg s

