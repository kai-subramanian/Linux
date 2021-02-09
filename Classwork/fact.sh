echo "Enter number"
read num
declare fact=1
for (( i=2;i<=num;i++ ))
{
  fact=$((fact * i))
}
echo "Factorial is $fact"
