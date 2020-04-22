# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)

SH_Score <- c(12,27,35,1)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season

SH_scored <- c(10,9,12,43)

# Combine your two vectors into a dataframe called `games`

games <- data.frame(SH_scored,SH_Score)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
#
#
#
##games$diff <- games$points - games$points_allowed

games$diff <- games$SH_Score-games$SH_scored

# Create a new column "won" which is TRUE if the Seahawks won the game

games$won <- games$diff > 0
games$won1 <- games$SH_Score > games$SH_scored #BOTH WORK

# Create a vector of the opponent names corresponding to the games played

opponents <- c("Eggs","cows","meow","Clippers")

# Assign your dataframe rownames of their opponents

rownames(games) <- opponents


# View your data frame to see how it has changed!
View(games)
