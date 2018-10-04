# Lists the non-repeat combinations of gender and yearsExperience, puts it into a new file
cat wages.csv | grep -v "g" | cut -d , -f 1,2 | tr "," " " | sort -V | uniq > GenderAndExperience.txt

# Lists the lowest wage earner, highest wage earner, and the number of females in the top 10 earners
echo lowest_earner
cat wages.csv | grep -v "g" | cut -d , -f 1,2,4 | sort -n -t , -k 3 | head -n 1
echo highest_earner
cat wages.csv | grep -v "g" | cut -d , -f 1,2,4 | sort -n -t , -k 3 | tail -n 1
echo number_of_females_in_top_10
cat wages.csv | grep -v "g" | cut -d , -f 1,4 | sort -n -t , -k 2 | tail -n 10 | grep "female" | wc -l

# The effect of graduating college on the minimum wage of earners within the dataset
echo the_effect_of_graduating_college_on_the_minumum_wage_of_earners_within_the_dataset
a=$(cat wages.csv | grep -v "g" | cut -d , -f 3,4 | grep -E "16\," | sort -n -t , -k 2 | head -n 1 | cut -d , -f 2)
b=$(cat wages.csv | grep -v "g" | cut -d , -f 3,4 | grep -E "12\," | sort -n -t , -k 2 | head -n 1 | cut -d , -f 2)
echo "$a - $b" | bc
