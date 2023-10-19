total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep Mem | awk '{print $4}')

used_percentage=$(echo "(100 - ($free / $total * 100)" | bc -l | awk -F . '{print $1}')

if [ $used_percentage -lt 50 ]; then
 echo Mem stat is green
elif [ $used_percentage -lt 70]; then
 echo Mem stat is Orange
else
 echo Mem stat is red
fi
echo $used_percentage


#here bc is the command line calculator but it is not bale to process the decimal calculations
echo $used_percentage

#let me write the conditions
#0-50 used -> good (green)
#51-70 used -> orange
#>70 -> red




