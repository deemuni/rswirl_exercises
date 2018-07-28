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
> head(plants)
               Scientific_Name          Duration Active_Growth_Period Foliage_Color pH_Min
1                  Abelmoschus              <NA>                 <NA>          <NA>     NA
2       Abelmoschus esculentus Annual, Perennial                 <NA>          <NA>     NA
3                        Abies              <NA>                 <NA>          <NA>     NA
4               Abies balsamea         Perennial    Spring and Summer         Green      4
5 Abies balsamea var. balsamea         Perennial                 <NA>          <NA>     NA
6                     Abutilon              <NA>                 <NA>          <NA>     NA
  pH_Max Precip_Min Precip_Max Shade_Tolerance Temp_Min_F
1     NA         NA         NA            <NA>         NA
2     NA         NA         NA            <NA>         NA
3     NA         NA         NA            <NA>         NA
4      6         13         60        Tolerant        -43
5     NA         NA         NA            <NA>         NA
6     NA         NA         NA            <NA>         NA

| Perseverance, that's the answer.

  |==========================================                                       |  52%
| Take a minute to look through and understand the output above. Each row is labeled with
| the observation number and each column with the variable name. Your screen is probably
| not wide enough to view all 10 columns side-by-side, in which case R displays as many
| columns as it can on each line before continuing on the next.

...

  |=============================================                                    |  56%
| By default, head() shows you the first six rows of the data. You can alter this behavior
| by passing as a second argument the number of rows you'd like to view. Use head() to
| preview the first 10 rows of plants.

> head(plants, 10)
                     Scientific_Name          Duration Active_Growth_Period Foliage_Color
1                        Abelmoschus              <NA>                 <NA>          <NA>
2             Abelmoschus esculentus Annual, Perennial                 <NA>          <NA>
3                              Abies              <NA>                 <NA>          <NA>
4                     Abies balsamea         Perennial    Spring and Summer         Green
5       Abies balsamea var. balsamea         Perennial                 <NA>          <NA>
6                           Abutilon              <NA>                 <NA>          <NA>
7               Abutilon theophrasti            Annual                 <NA>          <NA>
8                             Acacia              <NA>                 <NA>          <NA>
9                  Acacia constricta         Perennial    Spring and Summer         Green
10 Acacia constricta var. constricta         Perennial                 <NA>          <NA>
   pH_Min pH_Max Precip_Min Precip_Max Shade_Tolerance Temp_Min_F
1      NA     NA         NA         NA            <NA>         NA
2      NA     NA         NA         NA            <NA>         NA
3      NA     NA         NA         NA            <NA>         NA
4       4    6.0         13         60        Tolerant        -43
5      NA     NA         NA         NA            <NA>         NA
6      NA     NA         NA         NA            <NA>         NA
7      NA     NA         NA         NA            <NA>         NA
8      NA     NA         NA         NA            <NA>         NA
9       7    8.5          4         20      Intolerant        -13
10     NA     NA         NA         NA            <NA>         NA

| Nice work!

  |=================================================                                |  60%
| The same applies for using tail() to preview the end of the dataset. Use tail() to view
| the last 15 rows.

> tail(plants, 15)
                      Scientific_Name  Duration Active_Growth_Period Foliage_Color pH_Min
5152                          Zizania      <NA>                 <NA>          <NA>     NA
5153                 Zizania aquatica    Annual               Spring         Green    6.4
5154   Zizania aquatica var. aquatica    Annual                 <NA>          <NA>     NA
5155                Zizania palustris    Annual                 <NA>          <NA>     NA
5156 Zizania palustris var. palustris    Annual                 <NA>          <NA>     NA
5157                      Zizaniopsis      <NA>                 <NA>          <NA>     NA
5158             Zizaniopsis miliacea Perennial    Spring and Summer         Green    4.3
5159                            Zizia      <NA>                 <NA>          <NA>     NA
5160                     Zizia aptera Perennial                 <NA>          <NA>     NA
5161                      Zizia aurea Perennial                 <NA>          <NA>     NA
5162                 Zizia trifoliata Perennial                 <NA>          <NA>     NA
5163                          Zostera      <NA>                 <NA>          <NA>     NA
5164                   Zostera marina Perennial                 <NA>          <NA>     NA
5165                           Zoysia      <NA>                 <NA>          <NA>     NA
5166                  Zoysia japonica Perennial                 <NA>          <NA>     NA
     pH_Max Precip_Min Precip_Max Shade_Tolerance Temp_Min_F
5152     NA         NA         NA            <NA>         NA
5153    7.4         30         50      Intolerant         32
5154     NA         NA         NA            <NA>         NA
5155     NA         NA         NA            <NA>         NA
5156     NA         NA         NA            <NA>         NA
5157     NA         NA         NA            <NA>         NA
5158    9.0         35         70      Intolerant         12
5159     NA         NA         NA            <NA>         NA
5160     NA         NA         NA            <NA>         NA
5161     NA         NA         NA            <NA>         NA
5162     NA         NA         NA            <NA>         NA
5163     NA         NA         NA            <NA>         NA
5164     NA         NA         NA            <NA>         NA
5165     NA         NA         NA            <NA>         NA
5166     NA         NA         NA            <NA>         NA

| You're the best!

  |====================================================                             |  64%
| After previewing the top and bottom of the data, you probably noticed lots of NAs, which
| are R's placeholders for missing values. Use summary(plants) to get a better feel for
| how each variable is distributed and how much of the dataset is missing.
