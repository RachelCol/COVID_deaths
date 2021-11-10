# Creating COVID data set

#install.packages("ggplot2")
#install.packages("scales")
library("scales")
library("ggplot2")

# Downloaded original data set here on Sept. 20, 2021: 
# https://data.cdc.gov/NCHS/Provisional-COVID-19-Deaths-by-Week-Sex-and-Age/vsak-wrfu

AGE <- read.csv("AGE.csv")
COVID <- AGE

COVID = COVID[COVID$Sex == "All Sex",]
colnames(COVID) <- c("data_as_of", "state", "mmwr_week", "end_week", "sex", 
                     "age_group", "total_deaths", "covid_deaths")

# remove extraneous weeks (first seven and last two)
COVID = COVID[-c(1:84, 1045:1068),]

# create new column showing percent of deaths that are from COVID
COVID$percent_deaths_covid <- ((COVID$covid_deaths/COVID$total_deaths)*100)

# create a new column of "other" deaths: total deaths minus covid deaths
COVID$other_deaths <- COVID$total_deaths-COVID$covid_deaths


# Create All Ages data set

ALL_AGES <- COVID[COVID$age_group == "All Ages",]
# create a new column with numbers 1:89
ALL_AGES$week_number <- c(1:80)

# end script