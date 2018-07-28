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
