install.packages("dplyr")
library(dplyr)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "ps2_shalwa",
                 host = "localhost",
                 user = "root",
                 password = "")
df <- dbGetQuery(con, "SELECT * FROM bahanpraktikum1")
head(df)
View(df)
df_filtered <- df %>% filter(Gender == "P")
print(df_filtered)
