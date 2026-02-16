'==============================
'here is a function to display given list of numbers in the matrix form  
'parameters :
 ' n$ -name of the matrix
'rbc$ -row by column
'elist$ - list of numbers ,columns are separated by comma and rows are separated  by semi colon.
'mdg - maximum number of digits in the given list
'==============================
rbc$="3b3":n$="C":mdg=3
l$="3,-3,0;22,1,9;0,87,2"
print showmat$(n$,rbc$,l$,mdg)
print
l$="3,-13,4,33"
print showmat$("S","1b4",l$,3)
print
l$="3;23;123;-45"
print showmat$("B","4b1",l$,3)
print
l$="3,23,0,0,1;-45,-1,11,18,125;-444,876,234,0,0;0,0,0,11,12;-23,-345,234,123,234"
print showmat$("A","5b5",l$,4)

wait
function showmat$(n$,rbc$,elist$,mdg)
 if n$<>"" then n$=upper$(n$)+"=":s1=2
 for i=1 to mdg+1
   h$=h$+"#"
 next
r=val(word$(rbc$,1,"b"))
c=val(word$(rbc$,2,"b"))
dim t(r*c)
s2=c*len(h$)+2: s2=s2-4
tro$=n$;"|";chr$(175);chr$(175);space$(s2);chr$(175);chr$(175);"|";chr$(10)
bro$=space$(s1);"|__";space$(s2);"__|"
  for i=1 to r
    ee$=word$(elist$,i,";")
    for j=1 to c
       e$=word$(ee$,j,",")
       t$=t$+using(h$,val(e$))
    next
    tt$=tt$+space$(s1);"|";t$;"  |";chr$(10)
     t$=""
  next
 showmat$=tro$+tt$+bro$
end function
