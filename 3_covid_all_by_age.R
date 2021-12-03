# COVID DEATHS and ALL DEATHS, by age

# simple raw numbers, in two separate graphs (COVID deaths, and all deaths)
# useful for identifying how much COVID affected overall deaths, by age

# note: both charts use the saem scale 

# -----

# COVID deaths by week, by age

# Combine age groups, create new data set
NUMBERS <- c(1:(nrow(COVID)/12))
NUMBERS <- as.data.frame(NUMBERS)
colnames(NUMBERS) <- "weeks"
NUMBERS$Ages_0_to_14 <- (Ages_under_1$covid_deaths + Ages_1_to_4$covid_deaths + Ages_5_to_14$covid_deaths)
NUMBERS$Ages_15_to_34 <- (Ages_15_to_24$covid_deaths + Ages_25_to_34$covid_deaths)
NUMBERS$Ages_35_to_54 <- (Ages_35_to_44$covid_deaths + Ages_45_to_54$covid_deaths)
NUMBERS$Ages_55_to_74 <- (Ages_55_to_64$covid_deaths + Ages_65_to_74$covid_deaths)
NUMBERS$Ages_75_and_up <- (Ages_75_to_84$covid_deaths + Ages85_and_over$covid_deaths)

raw_covid_deaths <- ggplot(data = NUMBERS, aes(x = weeks)) +
  geom_line(aes(y = Ages_0_to_14, colour = "Ages_0_to_14")) +
  geom_line(aes(y = Ages_15_to_34, colour = "Ages_15_to_34")) +
  geom_line(aes(y = Ages_35_to_54, colour = "Ages_35_to_54")) +
  geom_line(aes(y = Ages_55_to_74, colour = "Ages_55_to_74")) +
  geom_line(aes(y = Ages_75_and_up, colour = "Ages_75_and_up")) +
  scale_colour_manual("", 
                      breaks = c("Ages_0_to_14", "Ages_15_to_34", "Ages_35_to_54", "Ages_55_to_74", "Ages_75_and_up"),
                      values = c("red", "orange", "green", "blue", "purple")) +
  xlab('Weeks') +
  ylab('Number of Deaths') +
  scale_y_continuous(limits = c(0,17500)) + 
  ggtitle(paste("COVID deaths by age, \n weeks ending", 
          COVID[1, 4], "to", COVID[nrow(COVID), 4])) 

print(raw_covid_deaths)

pdf(file="charts/deaths_to_covid_by_age.pdf")
raw_covid_deaths
dev.off()

# -----

# ALL Deaths by week, by age

# Combine age groups, create new data set
ALL_DEATHS <- c(1:(nrow(COVID)/12))
ALL_DEATHS <- as.data.frame(ALL_DEATHS)
colnames(ALL_DEATHS) <- "weeks"
ALL_DEATHS$Ages_0_to_14 <- (Ages_under_1$total_deaths + Ages_1_to_4$total_deaths + Ages_5_to_14$total_deaths)
ALL_DEATHS$Ages_15_to_34 <- (Ages_15_to_24$total_deaths + Ages_25_to_34$total_deaths)
ALL_DEATHS$Ages_35_to_54 <- (Ages_35_to_44$total_deaths + Ages_45_to_54$total_deaths)
ALL_DEATHS$Ages_55_to_74 <- (Ages_55_to_64$total_deaths + Ages_65_to_74$total_deaths)
ALL_DEATHS$Ages_75_and_up <- (Ages_75_to_84$total_deaths + Ages85_and_over$total_deaths)

raw_total_deaths <- ggplot(data = ALL_DEATHS, aes(x = weeks)) +
  geom_line(aes(y = Ages_0_to_14, colour = "Ages_0_to_14")) +
  geom_line(aes(y = Ages_15_to_34, colour = "Ages_15_to_34")) +
  geom_line(aes(y = Ages_35_to_54, colour = "Ages_35_to_54")) +
  geom_line(aes(y = Ages_55_to_74, colour = "Ages_55_to_74")) +
  geom_line(aes(y = Ages_75_and_up, colour = "Ages_75_and_up")) +
  scale_colour_manual("", 
                      breaks = c("Ages_0_to_14", "Ages_15_to_34", "Ages_35_to_54", "Ages_55_to_74", "Ages_75_and_up"),
                      values = c("red", "orange", "green", "blue", "purple")) +
  xlab('Weeks') +
  ylab('Percent') +
  scale_y_continuous(limits = c(0,50000)) + 
  ggtitle(paste("Total deaths by age, \n weeks ending", 
          COVID[1, 4], "to", COVID[nrow(COVID), 4])) 

print(raw_total_deaths)

pdf(file="charts/total_deaths_by_age_all_causes.pdf")
raw_total_deaths
dev.off()


# END script