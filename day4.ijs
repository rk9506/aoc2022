load 'utils.ijs'

lines =: LF split readfile 'day4input.txt'

parse =: monad define 
  0 ". '-' split"1 ',' split y
)

range =: dyad : '< x }. i. >: y'

isSubrange =: (0 -.@e. e.)&>

contains =: isSubrange +. isSubrange~

rs =: range/"1 parse"1 lines

part1 =: +/ contains/"1 rs

overlaps =: (1 e. e.)&>

part2 =: +/ overlaps/"1 rs
