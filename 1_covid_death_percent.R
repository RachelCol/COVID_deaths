# COVID deaths as a percent of all deaths
# Run "Data Set" first!!


# Percent of deaths due to COVID, All Ages
combined_plot <- ggplot(combined, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, All Ages, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 85 Years and Over
Ages85_and_over_plot <- ggplot(Ages85_and_over, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 85 Years and Over, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 75-84 Years
Ages_75_to_84plot <- ggplot(Ages_75_to_84, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 75-84 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 65-74 Years
Ages_65_to_74plot <- ggplot(Ages_65_to_74, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 65-74 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 55-64 Years
Ages_55_to_64plot <- ggplot(Ages_55_to_64, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 55-64 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 45-54 Years
Ages_45_to_54plot <- ggplot(Ages_45_to_54, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 45-54 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 35-44 Years
Ages_35_to_44plot <- ggplot(Ages_35_to_44, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 35-44 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 25-34 Years
Ages_25_to_34plot <- ggplot(Ages_25_to_34, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 25-34 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 15-24 Years
Ages_15_to_24plot <- ggplot(Ages_15_to_24, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 15-24 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 5-14 Years
Ages_5_to_14plot <- ggplot(Ages_5_to_14, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 5-14 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, 1-4 Years
Ages_1_to_4plot <- ggplot(Ages_1_to_4, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, 1-4 Years, \n weeks ending 2/22/20 to 10/09/21")

# Percent of deaths due to COVID, Under 1 year
Ages_under_1plot <- ggplot(Ages_under_1, aes(x=week_number, y=percent_deaths_covid, group = 1)) +
  geom_line() + xlab("weeks") + ylab("percent") + 
  ggtitle("COVID deaths as a percent of Total Deaths, Under 1 year, \n weeks ending 2/22/20 to 10/09/21")


# Graphs
print(combined_plot)
print(Ages_under_1plot)
print(Ages_1_to_4plot)
print(Ages_5_to_14plot)
print(Ages_15_to_24plot)
print(Ages_25_to_34plot)
print(Ages_35_to_44plot)
print(Ages_45_to_54plot)
print(Ages_55_to_64plot)
print(Ages_65_to_74plot)
print(Ages_75_to_84plot)
print(Ages85_and_over_plot)


# Run graphs together (percent of all deaths that are COVID deaths)

# Combine age groups, create new data set
SEGMENTS <- c(1:(nrow(COVID)/12))
SEGMENTS <- as.data.frame(SEGMENTS)
colnames(SEGMENTS) <- "weeks"
SEGMENTS$Ages_0_to_14 <- (((Ages_under_1$covid_deaths + Ages_1_to_4$covid_deaths + Ages_5_to_14$covid_deaths)/
                             (Ages_under_1$total_deaths + Ages_1_to_4$total_deaths + Ages_5_to_14$total_deaths))*100)
SEGMENTS$Ages_15_to_34 <- (((Ages_15_to_24$covid_deaths + Ages_25_to_34$covid_deaths)/
                              (Ages_15_to_24$total_deaths + Ages_25_to_34$total_deaths))*100)
SEGMENTS$Ages_35_to_54 <- (((Ages_35_to_44$covid_deaths + Ages_45_to_54$covid_deaths)/
                              (Ages_35_to_44$total_deaths + Ages_45_to_54$total_deaths))*100)
SEGMENTS$Ages_55_to_74 <- (((Ages_55_to_64$covid_deaths + Ages_65_to_74$covid_deaths)/
                              (Ages_55_to_64$total_deaths + Ages_65_to_74$total_deaths))*100)
SEGMENTS$Ages_75_and_up <- (((Ages_75_to_84$covid_deaths + Ages85_and_over$covid_deaths)/
                               (Ages_75_to_84$total_deaths + Ages85_and_over$total_deaths))*100)

ages_over_time <- ggplot(data = SEGMENTS, aes(x = weeks)) +
  geom_line(aes(y = Ages_0_to_14, colour = "Ages_0_to_14")) +
  geom_line(aes(y = Ages_15_to_34, colour = "Ages_15_to_34")) +
  geom_line(aes(y = Ages_35_to_54, colour = "Ages_35_to_54")) +
  geom_line(aes(y = Ages_55_to_74, colour = "Ages_55_to_74")) +
  geom_line(aes(y = Ages_75_and_up, colour = "Ages_75_and_up")) +
  scale_colour_manual("", 
                      breaks = c("Ages_0_to_14", "Ages_15_to_34", "Ages_35_to_54", "Ages_55_to_74", "Ages_75_and_up"),
                      values = c("red", "orange", "green4", "blue", "purple")) +
  xlab('Weeks') +
  ylab('Percent') +
  scale_y_continuous(limits = c(0,40)) + 
  ggtitle("COVID deaths as a percent of all deaths, \n weeks ending 2/22/20 to 10/09/21") 

print(ages_over_time)

pdf(file="charts/covid_deaths_as_percent_of_all_deaths.pdf")
ages_over_time
dev.off()


# end script