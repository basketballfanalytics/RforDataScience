library(tidyverse)
mtcars

df <- data.frame(abc = 1, xyz = "a")
df$x
df[,"xyz"]
df[,c("abc","xyz")]

tb <- tibble(abc = 1, xyz = "a")
tb$x
tb[,"xyz"]
tb[,c("abc","xyz")]

var <- "mpg"
cars_tb <- as.tibble(mtcars)
cars_tb[[var]]

annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`))
)

annoying$`1`
ggplot(annoying,aes(`1`,`2`)) + 
  geom_point()

annoying <- annoying %>% 
  mutate(`3` = `2` / `1`)

annoying %>%
  rename(one = `1`,
            two = `2`,
            three = `3`)

# alternative
# annoying %>%
#   transmute("one" = `1`,
#             "two" = `2`,
#             "three" = `3`)

# enframe

