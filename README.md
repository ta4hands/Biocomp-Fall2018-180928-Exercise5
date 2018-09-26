# Biocomp-Fall2018-180928-Exercise5

Armed with your new GitHub collaboration skills, work with your partner to develop a single shell script
that accomplishes the three tasks below. These tasks will require the file “wages.csv”, which you should have
in your local directory since you cloned the repo you forked from the TA.

1. Write a file containing the unique gender-yearsExperience combinations contained in the file “wages.csv”.
The file you create should contain gender in the first column and yearsExperience in a second column
with a space separating the two columns. The rows should be sorted first by gender and then by
yearsExperience, but remember to keep the pairings in a given row intact. Don’t worry about column
names in the output file.
2. Return the following information to stdout when the shell script is executed: 1) the gender, yearsExperience,
and wage for the highest earner, 2) the gender, yearsExperience, and wage for the lowest earner,
and 3) the number of females in the top ten earners in this data set. Be sure to indicate, which output
is which when returning them to stdout.
3. Return one more piece of information to stdout: the effect of graduating college (12 vs. 16 years of
school) on the minimum wage for earners in this dataset. Hint: you can define a shell variable with a
numeric variable and then us the command bc (“An arbitrary precision calculator language”). If you’ve
defined two shell variables (val1 and val2) that are decimal values you can subtract them with the
following code: echo "$val1 - $val2" | bc.
The owner should start by working on task #1 and collaborator should start by working on task #2.
Do this in parrallel, not sequentially. Work together on task #3, and don’t forget to check and edit each
other’s code from tasks #1 and #2. Remember to frequently add-commit locally and push-pull to GitHub
to avoid conflicts. Also, remember you don’t have to be in the same place at the same time to work on this
collaboratively thanks to GitHub!!!
