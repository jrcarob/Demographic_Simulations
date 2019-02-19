# "There Can Be Only One": Who will last forever? Spanish demography compared with some of our neighbours

As my first github repository, it will contain (at least is my intention) files and scripts related with the Ph.D thesis I am actually working in, which is about demography, longevity and mortality models as part of a major topic on financial planning resources in the long term.

Why such title? It may be a bit cocky or too arrogant but it wasn't my intention. I used the sentence of a famous mid-80's movie called [Highlander](https://www.imdb.com/title/tt0091203/?ref_=fn_al_tt_1). Assuming all the readers of the post have been watch it (or at least heard about it), I will resume the plot in a sentence: an old race of people endowed with the gift of immortality are condemned to seek and face each other until only one is left. In the case of life expectation, it looks like as if in the future we could reach a hundred years of life (I hope not).

To check it out, the first attempt is the script 'eoper.R', a simple R script to simulate the spanish life expectancy at birth from 1908 to 2016 with data from the human mortality database and the very appreciated collaboration of [jdieramon](http://jdieramon.github.io). 

The script shows the following chart, where we can see both life expectancy at birth for men and women since 1908. 

![splifexpect](https://user-images.githubusercontent.com/45860181/50893589-80352480-1401-11e9-86b4-9006acb9e268.png)

Actually, Spain is in 2nd place worlwide in life expectation (Japan in the first one), with a female rate of 85.7 years and a male rate 80.3; averaged 82.83; however is expected that for 2040 Spain will overtake Japan as the country with longest life expectation.

But stepping back to the title of the post it would be interesting to compare some european countries. In the script 'lifexp.R' we tried such comparison (remind that data are from 2016) and here we have the results:

![countries](https://user-images.githubusercontent.com/45860181/50896452-51bb4780-1409-11e9-87f2-e151ef213b53.png)

Where we can see that Italy has the longest life expectation followed, closely, by France and Spain.
