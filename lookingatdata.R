## Credit: grateful to Rswirl and John Hopkins University's course in R programming.
## Purpose: Domentation of exercises and used as good review and reference. 

#Selection: 12

 |                                                                                 |   0%

| Whenever you're working with a new dataset, the first thing you should do is look at it!
| What is the format of the data? What are the dimensions? What are the variable names?
| How are the variables stored? Are there missing data? Are there any flaws in the data?
...

  |===                                                                              |   4%
| This lesson will teach you how to answer these questions and more using R's built-in
| functions. We'll be using a dataset constructed from the United States Department of
| Agriculture's PLANTS Database (http://plants.usda.gov/adv_search.html).

...

  |======                                                                           |   8%
| I've stored the data for you in a variable called plants. Type ls() to list the
| variables in your workspace, among which should be plants.

> ls()
[1] "plants"

| You are quite good my friend!

  |==========                                                                       |  12%
| Let's begin by checking the class of the plants variable with class(plants). This will
| give us a clue as to the overall structure of the data.

> class(plants)
[1] "data.frame"

| You nailed it! Good job!

  |=============                                                                    |  16%
| It's very common for data to be stored in a data frame. It is the default class for data
| read into R using functions like read.csv() and read.table(), which you'll learn about
| in another lesson.

...

  |================                                                                 |  20%
| Since the dataset is stored in a data frame, we know it is rectangular. In other words,
| it has two dimensions (rows and columns) and fits neatly into a table or spreadsheet.
| Use dim(plants) to see exactly how many rows and columns we're dealing with.

> dim(plants)
[1] 5166   10

| You are really on a roll!

  |===================                                                              |  24%
| The first number you see (5166) is the number of rows (observations) and the second
| number (10) is the number of columns (variables).
...

  |=======================                                                          |  28%
| You can also use nrow(plants) to see only the number of rows. Try it out.

> 
> nrow(plants)
[1] 5166

| You nailed it! Good job!

  |==========================                                                       |  32%
| ... And ncol(plants) to see only the number of columns.

> ncol(plants)
[1] 10

| All that practice is paying off!

  |=============================                                                    |  36%
| If you are curious as to how much space the dataset is occupying in memory, you can use
| object.size(plants).

> object.size(plants)
644232 bytes

| Keep working like that and you'll get there!

  |================================                                                 |  40%
| Now that we have a sense of the shape and size of the dataset, let's get a feel for
| what's inside. names(plants) will return a character vector of column (i.e. variable)
| names. Give it a shot.

> names(plants)
 [1] "Scientific_Name"      "Duration"             "Active_Growth_Period"
 [4] "Foliage_Color"        "pH_Min"               "pH_Max"              
 [7] "Precip_Min"           "Precip_Max"           "Shade_Tolerance"     
[10] "Temp_Min_F"          

| You're the best!

  |====================================                                             |  44%
| We've applied fairly descriptive variable names to this dataset, but that won't always
| be the case. A logical next step is to peek at the actual data. However, our dataset
| contains over 5000 observations (rows), so it's impractical to view the whole thing all
| at once.

...

  |=======================================                                          |  48%
| The head() function allows you to preview the top of the dataset. Give it a try with
| only one argument.
