

total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep Mem | awk '{print $4}')

free_percentage=$(echo " scale=1; $free / $total * 100" | bc -l)

#here bc is the command line calculator but it is not bale to process the decimal calculations
echo $free_percentage
