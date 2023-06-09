[top]
components : sida

[sida]
type : cell
width : 150
height : 150
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors : sida(-1,-1) sida(-1,0) sida(-1,1) 
neighbors : sida(0,-1)  sida(0,0)  sida(0,1)
neighbors : sida(1,-1)  sida(1,0)  sida(1,1)
initialvalue : 0
initialCellsValue : HIV4.val
localtransition : sida-rule

[sida-rule]
rule : 1 100 { (0,0) = 0 and ((statecount(1)+statecount(1.25)+statecount(1.5)+statecount(1.75)) >= 1 or statecount(2) >= 4) }
rule : 1.25 100 { (0,0) = 1 }
rule : 1.5 100 { (0,0) = 1.25 }
rule : 1.75 100 { (0,0) = 1.5 }
rule : 2 100 { (0,0) = 1.75 }
rule : 3 100 { (0,0) = 2 }
rule : { if ( randInt(99) <= 0 , 3 , if ( randInt(99999) <= 4, 1 , 0 ) ) } 100 { (0,0) = 3 }
rule : 0 100 { t }