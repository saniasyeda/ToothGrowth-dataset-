data("ToothGrowth")
View(ToothGrowth)

#Method 1) Filtered Data and show the results where dose is 0.5.
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

arrange(filtered_tg, len) # len shows the lenght of tooth

# Method 2) Nested- Same return with different method
arrange(filter(ToothGrowth,dose==0.5),len)

#Method 3) Pipe function to get the same results 
filtered_toothgrowth <- ToothGrowth %>%  
  filter(dose==0.5) %>% 
  arrange(len)
View(filtered_toothgrowth)

#Average Tooth length for each supplements used 
#(orange juice or Ascorbic Acid)
filtered_toothgrowth <- ToothGrowth %>%  
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T), .groups = "drop")



