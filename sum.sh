echo "Enter a set of numberes separated by spaces:"
read -a numbers
sum_even=0
sum_odd=0
for num in "${numbers[@]}"
do
if [$(($num % 2)) -eq 0];
then
sum_even=$(($num_even+ $num))
else
sum_odd=$(($sum_odd+ $num))
fi
done
echo "sum of the even numbers is:$sum_even"
echo "sum of odd numbers is:$sum_odd"
