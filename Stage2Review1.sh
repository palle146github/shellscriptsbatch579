echo "Select Your favourite team here"
echo "hint : CSK DC GT"
read teamName

win=0
lose=0
points=0
runRate=""
MATCH_PLAYED=14
rcbTeam=("Maxwell" "Virat" "Abd" "Chahal")
miTeam=("Pollard" "Ishan" "Bumrah" "Rohit")
declare -A cskTeam
cskTeam[batsman]="Duplesis"
cskTeam[bowler]="Saha"
cskTeam[allrounder]="Jadeja"
cskTeam[captain]="Dhoni"
function errorHandler() {
echo "Your Given Input Is Invalid , Please Try Again ..."
}
function playoffEligibility() {

case $1 in

   1)

      echo "$2 is Eligible for PlayOffs"

      ;;

   2)

      echo "$2 is Eligible for PlayOffs"

      ;;

   3)

      echo "$2 is Eligible for PlayOffs"

      ;;

  4)

      echo "$2 is Eligible for PlayOffs"

      ;;

   *)

     echo "$2 is Not Eligible for PlayOffs"

     ;;

esac
}


function roles(){
echo "$1 is a $3 of team $2"
}


function responsibility(){

case $1 in

   MI)

      	for item in ${miTeam[@]}
	do
	if [ $item == "Bumrah" ]
	then
		roles $item $1 "Bowler"
	elif [ $item == "Rohit" ]
	then
		roles $item $1 "Captain"
	elif [ $item == "Ishan" ]
	then
		roles $item $1 "Batsman"
	else
		roles $item $1 "Allrounder"
	fi
	done
      	;;

   RCB)

      	for item in ${rcbTeam[@]}
	do
	if [ $item == "Chahal" ]
	then
		roles $item $1 "Bowler"
	elif [ $item == "Virat" ]
	then
		roles $item $1 "Captain"
	elif [ $item == "Abd" ]
	then
		roles $item $1 "Batsman"
	else
		roles $item $1 "Allrounder"
	fi
	done

	;;

   CSK)

      for item in ${cskTeam[@]}
	do
	if [ $item == "Saha" ]
	then
		roles $item $1 "Bowler"
	elif [ $item == "Dhoni" ]
	then
		roles $item $1 "Captain"
	elif [ $item == "Duplesis" ]
	then
		roles $item $1 "Batsman"
	else
		roles $item $1 "Allrounder"
	fi
	done

      ;;



   *)

     echo ""

     ;;

esac
}

function pointsEstimation(){
lose=$((MATCH_PLAYED-$1))
points=$(($1*2))
echo "Team You Choosen , $teamName"
echo "Place Secured : $2"
echo "Matched Played : $MATCH_PLAYED"
echo "Won $1 , Lost $lose"
echo "Points : $points"
playoffEligibility $2 $teamName
responsibility $teamName
}

case $teamName in

   MI)

	position=10
	win=4
	runRate="-0.506"
	pointsEstimation $win $position $runRate

      ;;

   CSK)

	position=9
	win=4
	runRate="-0.203"
	pointsEstimation $win $position $runRate

      ;;

   RCB)

	position=4
	win=8
	runRate="-0.253"
	pointsEstimation $win $position $runRate

      ;;

   *)

     errorHandler

     ;;

esac
