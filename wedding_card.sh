#!/bin/bash
clear
url='https://goo.gl/photos/uy9ZF8LVt9HtkgAZ7'
location='https://goo.gl/maps/4PMsgLZvqGT2'

open_in_browser()
{
	link=$1
	if
		which cygstart > /dev/null 2>&1; then
		cygstart "$link"
	elif
		which gnome-open > /dev/null 2>&1; then
		gnome-open "$link"
	elif
		which xdg-open  > /dev/null 2>&1; then
		xdg-open "$link"
	else
		echo "Can't open browser"
	fi
}

calculate_days()
{
	start_ts=$(date +"%s")
	end_ts=$(date -d "2016-02-25" '+%s')
	diff=$(( ( end_ts - start_ts )/(60*60*24) ))
}

calculate_days

printf "Hi
Welcome to Sagar and Pannaga's wedding
Choose one of the following options:
1) Where is my invitation?
2) Something about the bride
3) something about the groom
4) How did they meet?
5) How do I recognize the two of them?
6) Where is the location?
7) What reason do I give to miss their wedding?
8) Get me out of here..!!\n"

read -r option
while true;
do
case "$option" in
1)
		echo '
 
                 _.!._             
                /O*@*O\           
              <\@(_)@/>           
      ,;,   .--;`     `;--.   ,
       "@O_/   |d     b|   \ _hnn 
      | `/ \   |       |   / \` |
      &&&&  :##;\     /;##;  &&&& 
      |  \ / `##/|   |##"  \ /  |
      \   %%`<"" |   |# `%%   / 
       "._|_ \   |   |"  / _|_.  
         "_/  /  \   \   \  \  
         / (\(     ".  -._&&&&
        (, ()##,    o"--.._`\-)
        -()()############()()()    
         /:::::/()`Y`()\:::::\
         \::::( () | () )::::/    
          `"""`\().".()/"""""`     
            
 
========= Wedding invitation ==========  


===    
|     ---  ---   ---  ----
===  |   | |  | |   | |--/
   |  \  | |  |  \  | |
===    --+ ---+   --+ |
              |
             /


          AND

===
|  |
===  ---  ---+ ---+ ---  ---  ---
|    |  | |  | |  | |  | |  | |  |
|    \--+ |  | |  | \--+ ---| \--+
                            |
                           /




"Love thy neighbour" - We took it rather too seriously..!

Save the date of our matrimony
on Thursday, the 25th of February
2016 is the year
when we need our near and dear.

Reception: 7 pm onwards

Place: Bangalore (Check the location option for more info)

Food: Yes..! It will be there

Get ready.'
    printf "\nOnly $diff days left.\nPlease enter another option\n"
    read -r option
;;

2)
	printf "\nThe bride is named Pannagashri and has been teased her entire life about it.\nShe is a techie, avid reader, writer, singer (la la la), and forced to be crazy about fitness by her hubby.\nShe has more words to write about the groom than herself.\n\nSo choose another option already..!\n"
	read -r option
;;

3)
	printf "\nThe groom is named Sagar-the simplest name that can't be made into a nickname at all and has been humiliated by his wife for that.\nHe is a techie, loves gadgets, enjoys playing squash, TT and badminton, has several devices to track his activities and heart rate, extremely social,\nloves his car and sunglasses, has a collection of perfumes and watches and yet gets crazy over a new one.\nHis favourite pastime is irritating his wife for no apparent reason.\nNow that he sees where this description is going, he wants to end it here.\n\nPlease choose another option.\n"
	read -r option
;;

4)
	printf "\nIt all began in the chemistry lab..! That's all we can recall.\n\nNext option please..!\n"
	read -r option
;;

5)
	printf "\nYou can find the photo in this link: $url \nDo you want to open it in your browser? yes/no"
	read -r answer
	if [ "$answer" == "yes" ]; then
		open_in_browser $url #insert code to open link in browser
	fi
	echo "Enter another option"
	read -r option
;;

6)
	printf "\nVenue: Sri Dharmasthala Manjunatha Kalyana Mantapa\nCity: Bangalore\nLandmark: Near BMS College of Engineering, Bull temple Road, Bangalore\nYou can find this on Google maps here: https://goo.gl/maps/4PMsgLZvqGT2\nDo you want to open this link in your browser?yes/no"
	read -r answer
	if [ "$answer" == "yes" ]; then
		open_in_browser $location
	fi
	echo "Enter another option"
	read -r option
;;

7)
	printf "\nYou could try saying there was a black hole that gulped me down on the way to the wedding\nOr you could say the more logical - too much traffic. Well, when you can reach office in the traffic, you can make it to the wedding too.\nYou are not just invited, you are expected.\nTo exit this invite, just press 8\n"
	read -r option
;;

8)
	printf "\nBye..! Hope to see you at the wedding :)\n"
	break
;;

*)
printf "This is an invalid option\n"
break

esac
done
