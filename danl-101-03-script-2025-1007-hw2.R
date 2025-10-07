library(tidyverse)
library(skimr)
nyc_payroll_new <- read_csv("https://bcdanl.github.io/data/nyc_payroll_2024.csv")



# q1 ----------------------------------------------------------------------

# 1. How can you filter the data.frame nyc_payroll_new 
# to calculate descriptive statistics (mean and standard deviation) 
# of Base_Salary for workers in the Work_Location_Borough "MANHATTAN"? 
# Similarly, how can you filter the data.frame nyc_payroll_new 
# to calculate these statistics for workers in the Work_Location_Borough "QUEENS"?
  
# Provide the R code to perform these calculations, 
# and then report the mean and standard deviation of Base_Salary separately 
# for workers in "MANHATTAN" and "QUEENS".

nyc_payroll_new |> 
  select(Work_Location_Borough) |> 
  distinct()

# R is case-sensitive.
  # "MANHATTAN" instead of "Manhattan" for this question.

# df_manhattan <- nyc_payroll_new |> 
#   filter(Work_Location_Borough == "MANHATTAN") |> 
#   select(Base_Salary)
# 
# df_manhattan_summary <- skim(df_manhattan)

df_manhattan <- nyc_payroll_new |> 
  filter(Work_Location_Borough == "MANHATTAN")

# verify whether there is only "MANHATTAN" in Work_Location_Borough variable
df_manhattan |> 
  distinct(Work_Location_Borough)

df_manhattan_summary <- skim(df_manhattan) |> 
  select(skim_variable, numeric.mean, numeric.sd) |> 
  filter(skim_variable == "Base_Salary")


# for QUEENS


df_queens <- nyc_payroll_new |> 
  filter(Work_Location_Borough == "QUEENS")

# verify whether there is only "QUEENS" in Work_Location_Borough variable
df_queens |> 
  distinct(Work_Location_Borough)

df_queens_summary <- skim(df_queens) |> 
  select(skim_variable, numeric.mean, numeric.sd) |> 
  filter(skim_variable == "Base_Salary")




# q2 ----------------------------------------------------------------------
# 2. How can you filter the data.frame nyc_payroll_new to show only the records 
# where the Base_Salary is greater than or equal to $100,000?

q2 <- nyc_payroll_new |>
  filter(Base_Salary >= 100000)

q2 <- nyc_payroll_new |>
  filter(Base_Salary >= 10^5)


# q3 ----------------------------------------------------------------------

# 3. How can you select only distinct combinations of Agency_Name and Title_Description?
  
q3 <- nyc_payroll_new |> 
  distinct(Agency_Name, Title_Description) |> 
  arrange(Agency_Name, Title_Description)


# q4 ----------------------------------------------------------------------

# 4. How would you arrange the data by Regular_Gross_Paid in descending order, 
# showing the highest paid employees first?


q4 <- nyc_payroll_new |> 
  arrange(-Regular_Gross_Paid)


q4 <- nyc_payroll_new |> 
  arrange( desc(Regular_Gross_Paid) )



# q5 ----------------------------------------------------------------------

# 5. How can you select and rename the Title_Description variable to Title?
  
q5 <- nyc_payroll_new |> 
  rename(Title = Title_Description)


# q6 ----------------------------------------------------------------------

# 6. How can you filter the data to show only records for the “POLICE DEPARTMENT” 
# Agency_Name and arrange it by Total_OT_Paid in ascending order?
  
q6 <- nyc_payroll_new |> 
  filter(Agency_Name == "POLICE DEPARTMENT") |> 
  arrange(Total_OT_Paid)



# q7 ----------------------------------------------------------------------

# 7. How can you filter the data to include only those records 
# where the Pay_Basis is “per Annum” and then select only the First_Name, 
# Last_Name, and Base_Salary variables?
  

q7 <- nyc_payroll_new |> 
  filter(Pay_Basis == "per Annum") |> 
  select(First_Name, Last_Name, Base_Salary)

  

# q8 ----------------------------------------------------------------------

# 8. How would you arrange the data.frame 
# by Work_Location_Borough in ascending order 
# and Base_Salary in descending order?


q8 <- nyc_payroll_new |> 
  arrange(Work_Location_Borough, desc(Base_Salary))
  
  

# q9 ----------------------------------------------------------------------

# 9. How can you filter the nyc_payroll_new data.frame 
# to remove observations where the Base_Salary variable has NA values? 
# After filtering, how would you calculate 
# the total number of remaining observations?

skim(nyc_payroll_new)

# there is no missing values in Base_Salary
q9 <- nyc_payroll_new |> 
  filter( !is.na(Base_Salary) )
  
nrow(q9)



# there are missing values in Payroll_Number
q9_Payroll_Number <- nyc_payroll_new |> 
  filter( !is.na(Payroll_Number) )

# there are 3460 non-missing values in Payroll_Number
nrow(q9_Payroll_Number)


