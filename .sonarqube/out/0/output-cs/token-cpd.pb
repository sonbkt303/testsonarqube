ÔA
DH:\CleverOne\CodeAnalysis\MyDotNet\SampleApp\MyConsoleApp\Program.cs
	namespace 	
MyConsoleApp
 
{ 
public 

class 
Program 
{ 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{		 	
Console

 
.

 
	WriteLine

 
(

 
$str

 F
)

F G
;

G H
var 
order 
= 
new 
Order !
(! "
$num" #
,# $
$str% /
,/ 0
$str1 9
,9 :
$num; <
,< =
$num> C
,C D
DateTimeE M
.M N
NowN Q
)Q R
;R S
ProcessOrder 
( 
order 
) 
;  
var 
order2 
= 
new 
Order "
(" #
$num# $
,$ %
$str& 2
,2 3
$str4 ;
,; <
$num= >
,> ?
$num@ D
,D E
DateTimeF N
.N O
NowO R
)R S
;S T
ProcessOrder 
( 
order2 
)  
;  !
int 
test1 
; 
int 
test2 
; 
test1 
=	 

$num 
; 
CalculateDiscounts 
( 
)  
;  !
} 	
public 
static 
void 
ProcessOrder '
(' (
Order( -
order. 3
)3 4
{ 	
Console 
. 
	WriteLine 
( 
$"  
$str  3
{3 4
order4 9
.9 :
CustomerName: F
}F G
"G H
)H I
;I J
var"" 
taxRate"" 
="" 
$num"" 
;""  
decimal%% 

totalPrice%% 
=%%  
order%%! &
.%%& '
Quantity%%' /
*%%0 1
order%%2 7
.%%7 8
Price%%8 =
;%%= >
decimal&& 
totalWithTax&&  
=&&! "

totalPrice&&# -
+&&. /
(&&0 1

totalPrice&&1 ;
*&&< =
taxRate&&> E
)&&E F
;&&F G
Console'' 
.'' 
	WriteLine'' 
('' 
$"''  
$str''  6
{''6 7
totalWithTax''7 C
}''C D
"''D E
)''E F
;''F G
if** 
(** 
order** 
.** 
Price** 
>** 
$num** !
)**! "
{++ 
Console,, 
.,, 
	WriteLine,, !
(,,! "
$str,," M
),,M N
;,,N O
}-- 
if00 
(00 
order00 
.00 
Quantity00 
>00  
$num00! "
)00" #
{11 
Console22 
.22 
	WriteLine22 !
(22! "
$str22" >
)22> ?
;22? @
}33 
else44 
{55 
Console66 
.66 
	WriteLine66 !
(66! "
$str66" =
)66= >
;66> ?
}77 
if:: 
(:: 
order:: 
.:: 
Price:: 
>:: 
$num:: !
)::! "
{;; 
Console<< 
.<< 
	WriteLine<< !
(<<! "
$str<<" M
)<<M N
;<<N O
}== 
}>> 	
publicAA 
staticAA 
decimalAA 
CalculateOrderTotalAA 1
(AA1 2
intAA2 5
orderIdAA6 =
,AA= >
stringAA? E
customerNameAAF R
,AAR S
stringAAT Z
productAA[ b
,AAb c
intAAd g
quantityAAh p
,AAp q
decimalAAr y
priceAAz 
)	AA Ä
{BB 	
returnCC 
quantityCC 
*CC 
priceCC #
;CC# $
}DD 	
publicGG 
staticGG 
voidGG 
CalculateDiscountsGG -
(GG- .
)GG. /
{HH 	
varII 
	customer1II 
=II 
newII 
CustomerII  (
{II) *
CustomerTypeII+ 7
=II8 9
$strII: C
,IIC D
PurchaseAmountIIE S
=IIT U
$numIIV [
}II\ ]
;II] ^
varJJ 
	customer2JJ 
=JJ 
newJJ 
CustomerJJ  (
{JJ) *
CustomerTypeJJ+ 7
=JJ8 9
$strJJ: ?
,JJ? @
PurchaseAmountJJA O
=JJP Q
$numJJR X
}JJY Z
;JJZ [
ifMM 
(MM 
	customer1MM 
.MM 
CustomerTypeMM &
==MM' )
$strMM* 3
)MM3 4
{NN 
decimalOO 
discountOO  
=OO! "
	customer1OO# ,
.OO, -
PurchaseAmountOO- ;
*OO< =
$numOO> C
;OOC D
ConsolePP 
.PP 
	WriteLinePP !
(PP! "
$"PP" $
$strPP$ ?
{PP? @
discountPP@ H
}PPH I
"PPI J
)PPJ K
;PPK L
}QQ 
ifSS 
(SS 
	customer2SS 
.SS 
CustomerTypeSS &
==SS' )
$strSS* /
)SS/ 0
{TT 
decimalUU 
discountUU  
=UU! "
	customer2UU# ,
.UU, -
PurchaseAmountUU- ;
*UU< =
$numUU> C
;UUC D
ConsoleVV 
.VV 
	WriteLineVV !
(VV! "
$"VV" $
$strVV$ ;
{VV; <
discountVV< D
}VVD E
"VVE F
)VVF G
;VVG H
}WW 
}XX 	
}YY 
public[[ 

class[[ 
Order[[ 
{\\ 
public]] 
int]] 
OrderId]] 
{]] 
get]]  
;]]  !
set]]" %
;]]% &
}]]' (
public^^ 
string^^ 
CustomerName^^ "
{^^# $
get^^% (
;^^( )
set^^* -
;^^- .
}^^/ 0
public__ 
string__ 
Product__ 
{__ 
get__  #
;__# $
set__% (
;__( )
}__* +
public`` 
int`` 
Quantity`` 
{`` 
get`` !
;``! "
set``# &
;``& '
}``( )
publicaa 
decimalaa 
Priceaa 
{aa 
getaa "
;aa" #
setaa$ '
;aa' (
}aa) *
publicbb 
DateTimebb 
	OrderDatebb !
{bb" #
getbb$ '
;bb' (
setbb) ,
;bb, -
}bb. /
publicdd 
Orderdd 
(dd 
intdd 
orderIddd  
,dd  !
stringdd" (
customerNamedd) 5
,dd5 6
stringdd7 =
productdd> E
,ddE F
intddG J
quantityddK S
,ddS T
decimalddU \
pricedd] b
,ddb c
DateTimeddd l
	orderDateddm v
)ddv w
{ee 	
OrderIdff 
=ff 
orderIdff 
;ff 
CustomerNamegg 
=gg 
customerNamegg '
;gg' (
Producthh 
=hh 
producthh 
;hh 
Quantityii 
=ii 
quantityii 
;ii  
Pricejj 
=jj 
pricejj 
;jj 
	OrderDatekk 
=kk 
	orderDatekk !
;kk! "
}ll 	
}mm 
publicoo 

classoo 
Customeroo 
{pp 
publicqq 
stringqq 
CustomerTypeqq "
{qq# $
getqq% (
;qq( )
setqq* -
;qq- .
}qq/ 0
publicrr 
decimalrr 
PurchaseAmountrr %
{rr& '
getrr( +
;rr+ ,
setrr- 0
;rr0 1
}rr2 3
}ss 
}tt 