

total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep Mem | awk '{print $4}')

free_percentage=$(echo "scale=2; $free / $total * 100" | bc -l)

#here bc is the command line calculator but it is not bale to process the decimal calculations
echo $free_percentage

#let me write the conditions
#0-50 used -> good (green)
#51-70 used -> orange
#>70 -> red