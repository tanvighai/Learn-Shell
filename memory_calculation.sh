

total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep Mem | awk '{print $4}')

free_percentage=$(echo "$free / $total * 100" | bc)

#here bc is the command line calculator
echo $free_percentage
