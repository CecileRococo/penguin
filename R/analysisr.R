# eviter d'utiliser setwd dans un srcipt, avoir tout les fichier nécessaires dans un même dossier et eviter d'utiliser setwd
data <- read_excel("data.xlsx")

summary(data)

print(round(mean(subset(na.omit(data), species == "Adelie" & island == "Torgersen")$bill_length_mm), 2))
print(round(mean(subset(na.omit(data), species == "Adelie" & island == "Biscoe")$bill_length_mm), 2))
print(round(mean(subset(na.omit(data), species == "Adelie" & island == "Dream")$bill_length_mm), 2))


# Plot
penguins_clean <- na.omit(data)
plot(penguins_clean$bill_length_mm, penguins_clean$bill_depth_mm, type = "n", xlab = "Bill Length (mm)", ylab = "Bill Depth (mm)", main = "Penguin Bill Dimensions")
points(
  penguins_clean$bill_length_mm[penguins_clean$species == "Adelie"], penguins_clean$bill_depth_mm[penguins_clean$species == "Adelie"],
  col = "red", pch = 16
)
points(penguins_clean$bill_length_mm[penguins_clean$species == "Chinstrap"], penguins_clean$bill_depth_mm[penguins_clean$species == "Chinstrap"], col = "green", pch = 17)
points(penguins_clean$bill_length_mm[penguins_clean$species == "Gentoo"],
  penguins_clean$bill_depth_mm[penguins_clean$species == "Gentoo"],
  col = "blue", pch = 18
)
legend("topright",
  legend = unique(penguins_clean$species),
  col = c(
    "red",
    "green",
    "blue"
  ), pch = c(16, 17, 18)
)

# ONLY ONCE: install the package
install.packages("tidyverse")

# Load the package (not that it is not part of the core tidyverse!)
library(readxl)

# Read a file
data <- read_excel("data.xlsx")

#read a specific sheet 
data <- read_excel("data.xlsx", sheet = "sheetNameOrNumber")

#specify how missing data are represented 
data <- read_excel("data.xlsx", na = "-")

#specify column types 
data <- read_excel("data.xlsx", col_types = c("date", "skip", "guess", "numeric"))

install.packages("rmarkdown")
