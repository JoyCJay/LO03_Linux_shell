#/bin/awk -f

#awk 'length>10{print}' exn1.sh

#length>10
awk '{
	n=length($0)
	if (n>=10)
	{
	print n,$0}
}' exn1.sh
