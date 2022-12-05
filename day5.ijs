load 'utils.ijs'

s =: readfile 'day5input.txt'
lines =: LF split s
crates =: ('[A-Z]+' (<@rxfirst"1) |: lines) -. a:
instLines =: 'move [0-9]+ from [0-9]+ to [0-9]+' rxall s
insts =: 0 ". > '[0-9]+' rxall"1 > instLines

lift =: dyad define
  'num from to' =. x
  num {. > (<: from) { y
)

move =: 1 : 0
  'num from to' =. x
  'fromIdx toIdx' =. <: from , to
  newSource =. < num }. > fromIdx { y
  newTarget =. < (> toIdx { y) ,~ (x u y) 
  newTarget toIdx} newSource fromIdx} y
)

lastState =: 1 : 0
  x (] F.. (u move)) y
)

top =: {.&>"1 

part1 =: top crates (|.@lift lastState) insts

part2 =: top crates (lift lastState) insts
