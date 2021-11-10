# Creating COVID data set

#install.packages("ggplot2")
#install.packages("scales")
library("scales")
library("ggplot2")

# Download this data set, here: 
# https://data.cdc.gov/NCHS/Provisional-COVID-19-Deaths-by-Week-Sex-and-Age/vsak-wrfu

NOW <- read.csv("Provisional_COVID-19_Deaths_by_Week_Sex_and_Age_Nov_10_2021.csv")
COVID <- NOW

COVID = COVID[COVID$Sex == "All Sex",]
colnames(COVID) <- c("data_as_of", "state", "mmwr_week", "end_week", "sex", 
                     "age_group", "total_deaths", "covid_deaths")

# create new column showing percent of deaths that are from COVID
COVID$percent_deaths_covid <- ((COVID$covid_deaths/COVID$total_deaths)*100)

# create a new column of "other" deaths: total deaths minus covid deaths
COVID$other_deaths <- COVID$total_deaths-COVID$covid_deaths

# Remove prior to the week ending on Feb 22, 2020 (i.e. the first 7 weeks)
COVID = COVID[-c(1:84),]

# Check non-COVID deaths, to see when data becomes complete:
part <- COVID[(nrow(COVID)-144):nrow(COVID),]
part <- subset(part, age_group == "All Ages")
part$other_deaths
# create a plot to help visualize
plot(part$other_deaths)

# Remove most recent four weeks of data (these tend to still be incomplete)
# note: with the above data set, the last week included ends 10/09/21
COVID <- COVID[1:(nrow(COVID)-48),]

# note: if running this script with an updated data set, will need to
# update the date in the ggplot bits in other scripts. 

# -----

# Create age-specific data sets:

combined <- COVID[COVID$age_group == "All Ages",]
combined$week_number <- c(1:(nrow(COVID)/12))

Ages85_and_over <- COVID[COVID$age_group == "85 Years and Over",]
Ages85_and_over$week_number <- c(1:(nrow(COVID)/12))

Ages_75_to_84 <- COVID[COVID$age_group == "75-84 Years",]
Ages_75_to_84$week_number <- c(1:(nrow(COVID)/12))

Ages_65_to_74 <- COVID[COVID$age_group == "65-74 Years",]
Ages_65_to_74$week_number <- c(1:(nrow(COVID)/12))

Ages_55_to_64 <- COVID[COVID$age_group == "55-64 Years",]
Ages_55_to_64$week_number <- c(1:(nrow(COVID)/12))

Ages_45_to_54 <- COVID[COVID$age_group == "45-54 Years",]
Ages_45_to_54$week_number <- c(1:(nrow(COVID)/12))

Ages_35_to_44 <- COVID[COVID$age_group == "35-44 Years",]
Ages_35_to_44$week_number <- c(1:(nrow(COVID)/12))

Ages_25_to_34 <- COVID[COVID$age_group == "25-34 Years",]
Ages_25_to_34$week_number <- c(1:(nrow(COVID)/12))

Ages_15_to_24 <- COVID[COVID$age_group == "15-24 Years",]
Ages_15_to_24$week_number <- c(1:(nrow(COVID)/12))

Ages_5_to_14 <- COVID[COVID$age_group == "5-14 Years",]
Ages_5_to_14$week_number <- c(1:(nrow(COVID)/12))

Ages_1_to_4 <- COVID[COVID$age_group == "1-4 Years",]
Ages_1_to_4$week_number <- c(1:(nrow(COVID)/12))

Ages_under_1 <- COVID[COVID$age_group == "Under 1 year",]
Ages_under_1$week_number <- c(1:(nrow(COVID)/12))


# end script