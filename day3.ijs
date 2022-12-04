load 'utils.ijs'

lines =: <;._2 (readfile 'day3input.txt') , LF

compartmentalise =: monad : '<"1 (2, ((# >y) % 2)) $ >y'

shared =: monad : '{. ([ -. -.)/ >y'

alphabet =: (26 {. (a. i. 'a') }. a.) , 26 {. (a. i. 'A') }. a.

prios =: monad : '+/ >: alphabet i. y'
  
part1 =: prios shared"1 compartmentalise"0 lines

part2 =: prios (3 * i. <. ($ lines) % 3) { (3 shared;.3 lines)

