#! /bin/bash
# cars.sh
# Emma Harper
# emharper

USERINPUT=0

echo "Welcoome to the Car Invertory Tracker"

while [ "$USERINPUT" -ne "3" ]
do
	echo "What would you like to do?"
        echo "Type 1 to add a car"
        echo "Type 2 to display list the cars"
        echo "Type 3 to exit the program"
        read -r USERINPUT

        echo "Enter the following information for your car."
        case "$USERINPUT" in
                "1") echo "Year: "
                read -r YEAR
                echo "Make: "
                read -r MAKE
                echo "Model: "
                read -r MODEL
                NEWCAR="$YEAR:$MAKE:$MODEL"
                echo "$NEWCAR" >> My_old_cars;;
                "2") sort My_old_cars;;
                "3") echo "Thank you!";;
                *) echo "That is an invalid option, please select options 1-3.";;
        esac
done
