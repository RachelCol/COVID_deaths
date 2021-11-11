# COVID deaths as a percent of all deaths
# Run "Data Set" first!!


# Deaths due to COVID, other, and total, All Ages
combined_chart <- ggplot(data = combined, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, all ages, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/all_ages.pdf")
combined_chart
dev.off()

# Deaths due to COVID, other, and total, 85 Years and Over
ages85_and_over_chart <- ggplot(data = Ages85_and_over, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 85 and over, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages85_and_over_chart.pdf")
ages85_and_over_chart
dev.off()

# Deaths due to COVID, other, and total, 75-84 Years
ages_75_to_84_chart <- ggplot(data = Ages_75_to_84, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 75-84, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))
  
pdf(file="charts/by_age/ages_75_to_84_chart.pdf")
ages_75_to_84_chart
dev.off()

# Deaths due to COVID, other, and total, 65-74 Years
ages_65_to_74_chart <- ggplot(data = Ages_65_to_74, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 65-74, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_65_to_74_chart.pdf")
ages_65_to_74_chart
dev.off()

# Deaths due to COVID, other, and total, 55-64 Years
ages_55_to_64_chart <- ggplot(data = Ages_55_to_64, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 55-64, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_55_to_64_chart.pdf")
ages_55_to_64_chart
dev.off()

# Deaths due to COVID, other, and total, 45-54 Years
ages_45_to_54_chart <- ggplot(data = Ages_45_to_54, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 45-54, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_45_to_54_chart.pdf")
ages_45_to_54_chart
dev.off()

# Deaths due to COVID, other, and total, 35-44 Years
ages_35_to_44_chart <- ggplot(data = Ages_35_to_44, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 35-44, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_35_to_44_chart.pdf")
ages_35_to_44_chart
dev.off()

# Deaths due to COVID, other, and total, 25-34 Years
ages_25_to_34_chart <- ggplot(data = Ages_25_to_34, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 25-34, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_25_to_34_chart.pdf")
ages_25_to_34_chart
dev.off()

# Deaths due to COVID, other, and total, 15-24 Years
ages_15_to_24_chart <- ggplot(data = Ages_15_to_24, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 15-24, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_15_to_24_chart.pdf")
ages_15_to_24_chart
dev.off()

# Deaths due to COVID, other, and total, 5-14 Years
ages_5_to_14_chart <- ggplot(data = Ages_5_to_14, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 5-14, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_5_to_14_chart.pdf")
ages_5_to_14_chart
dev.off()

# Deaths due to COVID, other, and total, 1-4 Years
ages_1_to_4_chart <- ggplot(data = Ages_1_to_4, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, ages 1-4, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_1_to_4_chart.pdf")
ages_1_to_4_chart
dev.off()

# Deaths due to COVID, other, and total, Under 1 year
ages_under_1_chart <- ggplot(data = Ages_under_1, aes(x = week_number)) +
  geom_line(aes(y = total_deaths, colour = "total_deaths")) +
  geom_line(aes(y = other_deaths, colour = "other_deaths")) +
  geom_line(aes(y = covid_deaths, colour = "covid_deaths")) +
  theme(legend.position="top") + 
  scale_colour_manual("", 
                      breaks = c("total_deaths", "other_deaths", "covid_deaths"),
                      values = c("black", "blue", "red")) +
  xlab('Weeks') + ylab('Deaths') +
  ggtitle(paste("Deaths, under 1 year old, weeks ending", 
                COVID[1, 4], "to", COVID[nrow(COVID), 4]))

pdf(file="charts/by_age/ages_under_1_chart.pdf")
ages_under_1_chart
dev.off()

# end script