#The is.leapyear function determines whether a given year is a leap year or a common year.
#The function does not take into account centurial years which are not leap years,
#unless the centurial year is divisible by 400, in which case it is a leap year.

#The is.natural function identifies positive integers and is used in the
#following is.leapyear function to see if years are divisible by 4, or not.
is.natural <- function(x,tol=.Machine$double.eps^0.5){
  sign(x) - abs(x-round(x))  >= 1-tol
}

#1752 was the first leap year, as we know it, where an extra day was placed at the end of February every four years. 
#So, no years before 1752 can be considered 'leap years' in the modern sense.
#If the year is divisible by 4, then it is a leap year.
#If the year is not divisible by 4, then it is a common year.
is.leapyear <- function(x) {
  if (x < 1752) {
    result <- "year is before 'leap years' began in the modern sense"
  }
  else if ((is.natural(x/4)) == "TRUE") {
    result <- "Leap Year"
  }
  else if ((is.natural(x/4)) == "FALSE") {
    result <- "Common Year"
  }
  return(result)
}