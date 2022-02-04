for i in `cat hosts.txt`
do
	ping $i -c 1 1>1.log 2>2.log
if [ $? -eq 0 ]
then
	#echo ping of $i is successful
	#cat 1.log
	echo "$i" >> successful_ping.txt
else
#	echo ping of $i isnt successful
	#cat 2.log
	echo "$i" >> not_successful_ing.txt
fi
done
