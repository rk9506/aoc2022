load 'utils.ijs'

lines =: LF split readfile 'day2input.txt'

handscore =: verb define 
  ('XYZ' i. y) { 1 2 3
)

outcome =: dyad define
 scores =. 3 3 $ 3 0 6 6 3 0 0 6 3
 xidx =. 'ABC' i. x
 yidx =. 'XYZ' i. y
 xidx ({"0 1) yidx { scores
)

linescore =: dyad define 
  (handscore y) + (x outcome y)
)

total =: +/ ({. |: lines) linescore ({: |: lines)

NB. Part 2
mymove =: dyad define 
  NB. mat is a 3x3 matrix indexed by the opponents move i and desired outcome j
  mat =. 3 3 $ 'ZXYXYZYZX'
  i =. 'ABC' i. x
  j =. 'XYZ' i. y
  j ({"0 1) i { mat
)

calctotal =: monad define 
  opponent =. {. |: y
  guide =. {: |: y
  +/ opponent linescore (opponent mymove guide)
)

p2 =: calctotal lines
