# COVID deaths as a percent of all deaths
# Run "Data Set" first!!


# Deaths due to COVID, other, and total, All Ages
combined <- COVID[COVID$age_group == "All Ages",]
combined$week_number <- c(1:80)
combined_chart <- ggplot() + 
  geom_line(data = combined, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = combined, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = combined, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 85 and over, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/all_ages.pdf")
combined_chart
dev.off()

# Deaths due to COVID, other, and total, 85 Years and Over
Ages85_and_over <- COVID[COVID$age_group == "85 Years and Over",]
Ages85_and_over$week_number <- c(1:80)
ages85_and_over_chart <- ggplot() + 
  geom_line(data = Ages85_and_over, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages85_and_over, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages85_and_over, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 85 and over, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages85_and_over_chart.pdf")
ages85_and_over_chart
dev.off()

# Deaths due to COVID, other, and total, 75-84 Years
Ages_75_to_84 <- COVID[COVID$age_group == "75-84 Years",]
Ages_75_to_84$week_number <- c(1:80)
ages_75_to_84_chart <- ggplot() + 
  geom_line(data = Ages_75_to_84, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_75_to_84, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_75_to_84, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 75-84, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_75_to_84_chart.pdf")
ages_75_to_84_chart
dev.off()

# Deaths due to COVID, other, and total, 65-74 Years
Ages_65_to_74 <- COVID[COVID$age_group == "65-74 Years",]
Ages_65_to_74$week_number <- c(1:80)
ages_65_to_74_chart <- ggplot() + 
  geom_line(data = Ages_65_to_74, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_65_to_74, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_65_to_74, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 65-74, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_65_to_74_chart.pdf")
ages_65_to_74_chart
dev.off()

# Deaths due to COVID, other, and total, 55-64 Years
Ages_55_to_64 <- COVID[COVID$age_group == "55-64 Years",]
Ages_55_to_64$week_number <- c(1:80)
ages_55_to_64_chart <- ggplot() + 
  geom_line(data = Ages_55_to_64, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_55_to_64, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_55_to_64, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 55-64, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_55_to_64_chart.pdf")
ages_55_to_64_chart
dev.off()

# Deaths due to COVID, other, and total, 45-54 Years
Ages_45_to_54 <- COVID[COVID$age_group == "45-54 Years",]
Ages_45_to_54$week_number <- c(1:80)
ages_45_to_54_chart <- ggplot() + 
  geom_line(data = Ages_45_to_54, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_45_to_54, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_45_to_54, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 45-54, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_45_to_54_chart.pdf")
ages_45_to_54_chart
dev.off()

# Deaths due to COVID, other, and total, 35-44 Years
Ages_35_to_44 <- COVID[COVID$age_group == "35-44 Years",]
Ages_35_to_44$week_number <- c(1:80)
ages_35_to_44_chart <- ggplot() + 
  geom_line(data = Ages_35_to_44, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_35_to_44, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_35_to_44, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 35-44, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_35_to_44_chart.pdf")
ages_35_to_44_chart
dev.off()

# Deaths due to COVID, other, and total, 25-34 Years
Ages_25_to_34 <- COVID[COVID$age_group == "25-34 Years",]
Ages_25_to_34$week_number <- c(1:80)
ages_25_to_34_chart <- ggplot() + 
  geom_line(data = Ages_25_to_34, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_25_to_34, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_25_to_34, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 25-34, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_25_to_34_chart.pdf")
ages_25_to_34_chart
dev.off()

# Deaths due to COVID, other, and total, 15-24 Years
Ages_15_to_24 <- COVID[COVID$age_group == "15-24 Years",]
Ages_5_to_14$week_number <- c(1:80)
ages_15_to_24_chart <- ggplot() + 
  geom_line(data = Ages_15_to_24, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_15_to_24, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_15_to_24, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 15-24, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_15_to_24_chart.pdf")
ages_15_to_24_chart
dev.off()

# Deaths due to COVID, other, and total, 5-14 Years
Ages_5_to_14 <- COVID[COVID$age_group == "5-14 Years",]
Ages_5_to_14$week_number <- c(1:80)
ages_5_to_14_chart <- ggplot() + 
  geom_line(data = Ages_5_to_14, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_5_to_14, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_5_to_14, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 5-14, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_5_to_14_chart.pdf")
ages_5_to_14_chart
dev.off()

# Deaths due to COVID, other, and total, 1-4 Years
Ages_1_to_4 <- COVID[COVID$age_group == "1-4 Years",]
Ages_1_to_4$week_number <- c(1:80)
ages_1_to_4_chart <- ggplot() + 
  geom_line(data = Ages_1_to_4, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_1_to_4, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_1_to_4, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, ages 1-4, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_1_to_4_chart.pdf")
ages_1_to_4_chart
dev.off()

# Deaths due to COVID, other, and total, Under 1 year
Ages_under_1 <- COVID[COVID$age_group == "Under 1 year",]
Ages_under_1$week_number <- c(1:80)
ages_under_1_chart <- ggplot() + 
  geom_line(data = Ages_under_1, aes(x = week_number, y = total_deaths), color = "black") +
  geom_line(data = Ages_under_1, aes(x = week_number, y = other_deaths), color = "blue") +
  geom_line(data = Ages_under_1, aes(x = week_number, y = covid_deaths), color = "red") +
  xlab('Weeks') +
  ylab('Deaths') +
  ggtitle("Deaths, under age 1, weeks ending 2/22/20 to 8/28/21, \n total (black) v. non-COVID (blue) v. COVID (red)")

pdf(file="charts/by_age/ages_under_1_chart.pdf")
ages_under_1_chart
dev.off()

# end script