#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output.
#Describe its output.

seq <- c(-5:5)
seq 

#The output after printing seq, shows a sequence of numbers from -5 to 5.

#b. x <- 1:7. What will be the value of x?
 # The value of x would be:
  #1 2 3 4 5 6 7

#2. Create a vector using seq() function
#a. seq(1, 3, by=0.2) # specify step size
#Write the R script and its output. Describe the output.

seq2 <- seq(1, 3, by=0.2)
seq2

#The output shows a sequence of decimal numbers from 1 to 3 but it increments by .2 due to the specified step size.

#3. A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
#18.

#a. Access 3rd element, what is the value?
  
workersAge <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

workersAge[3]

#The third element is 22.

#b. Access 2nd and 4th element, what are the values?
  
workersAge[c(2, 4)]

#The 2nd and 4th elements are 28 and 36.

#c. Access all but the 4th and 12th element is not
#included. Write the R script and its output.

allExcept <- workersAge[-c(4, 12)]
allExcept


#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the
#vector, names(x).
#a. Print the results. Then access x[c("first", "third")].
#Describe the output.
#b. Write the code and its output.

x <- c("first"=3, "second"=0, "third"=9)
x
names(x) <- c("first", "second", "third")
x[c("first", "third")]

#The first print of the vector x, it shows the values of first second and third elements with label. The second print was just the first and third elements excluding the second element.

#5. Create a sequence x from -3:2.
#a. Modify 2nd element and change it to 0;
x[2] <- 0
x
#Describe the output.
#b. Write the code and its output.

x <- c(-3:2)
x[2] <- 0
x

#The original output of the sequence shows numbers from -3 to 2. But after changing the value of the 2nd element to 0, it replaced the original 2nd element which is -2.

#6. *The following data shows the diesel fuel purchased by Mr. Cruz.

#a. Create a data frame for month, price per liter (php)
#and purchase-quantity (liter). Write the R scripts and
#its output.

month <- c("Jan", "Feb", "March", "Apr", "May", "June")
pricePerLiter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchaseQuantity <- c(25, 30, 40, 50, 10, 45)

df <- data.frame(Month = month, `Price per liter(php)` = pricePerLiter, `Purchase-quantity(liter)` = purchaseQuantity)

print(df)


#b. What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter,
#purchase)‘. Write the R scripts and its output.m
aveFuel <- weighted.mean(pricePerLiter, purchaseQuantity)

print(aveFuel)


#7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths
#(in miles) of 141 “major” rivers in North America, as compiled by the US Geological
#Survey”.
#a. Type “rivers” in your R console.
#Create a vector data with 7
#elements, containing the number of elements (length)
#in rivers, their sum (sum), mean (mean), median(median), variance(var), standard deviation(sd),
#minimum (min) and maximum (max).
#b. What are the results?
#c. Write the R scripts and its outputs.

rivers

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))

data


#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

#a. Create vectors according to the above table.
#Write the R scripts and its output.

powerRanking <- c(1:25)
celebName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
powerRanking
celebName
pay

#b. Modify the power ranking and pay of J.K. Rowling.
#Change power ranking to 15 and pay to 90. Write the R scripts and its output.

powerRanking[19] = 15
pay[19] = 90

powerRanking
pay

#c. Create an excel file from the table above and save it
#as csv file(PowerRanking). Import the csv file into the RStudio. What is the R script?
  
power_ranking <- read.csv("PowerRanking.csv")
print(power_ranking)


#d. Access the rows 10 to 20 and save it as Ranks.RData.
#Write the R script and its output.

rank10to20 <- power_ranking[10:20, ]
save(rank10to20, file = "Ranks.RData")
print(rank10to20)

#e. Describe its output.
#The output shows the power ranking, celebrity names, and pay of the row 10 up to row 20.

#9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
#a. Import the excel file into your RStudio.
#What is the R script?
  
library(readxl)
hotelsVienna <- read_excel("hotels-vienna.xlsx")

#b. How many dimensions does the dataset have?
 # What is the R script? WHat is its output?
  
print(hotelsVienna)
dim(hotelsVienna)

#The output shows informations about the hotels located in Vienna. The dataset contains 24 columns and 428 rows.

#c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings. Write the R script.

specificColumns <- hotelsVienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]

#d. Save the data as **new.RData to your RStudio. Write the R script.

save(specificColumns, file = "new.RData")

#e. Display the first six rows and last six rows of the
#new.RData. What is the R script?
  
firstSix <- head(specificColumns, 6)
firstSix
lastSix <- tail(specificColumns, 6)
lastSix


#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.
#a. Write the R scripts and its output.

veggies <- list("cabbage", "squash", "cucumber", "green beans", "malunggay", "kangkong", "broccoli", "carrot", "eggplant", "potato")
veggies

#b. Add 2 additional vegetables after the last vegetables in the list. What is the R script and its output?
  
veggies <- c(veggies, list("sweet potato", "radish"))
veggies

#c. Add 4 additional vegetables after index 5. How many
#datapoints does your vegetable list have? What is the R script and its output?
  
moreVeggies <- list("Sprouts", "Asparagus", "Collard Greens", "Red Cabbage")
veggies <- append(veggies, moreVeggies, after = 5)
veggies
length(veggies)

#d. Remove the vegetables in index 5, 10, and 15. How many vegetables were left? Write the codes and its output.

veggiesToremove <- c(5, 10, 15)
veggies <- veggies[-veggiesToremove]
veggies

#There are 13 vegetables left.
