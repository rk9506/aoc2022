load 'utils.ijs'

NB. Part 1
cals =: 0 split 0 ". (LF , LF) split readfile 'day1input.txt'
totals =: +/"1 cals
highest =: >./ totals

NB. Part 2
top3 =: 3 {. \:~ totals
top3total =: +/ top3
