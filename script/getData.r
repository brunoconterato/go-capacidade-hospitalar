install.packages("remotes")
remotes::install_github("rfsaldanha/microdatasus")

library(microdatasus)
dados <- fetch_datasus(year_start = 2017, year_end = 2022, month_start = 1, month_end = 12, uf = "GO", information_system = "CNES-LT")

# Next commented line not working :(
# data <- process_sim(dados)  

# So I prefer to save data in csv and work with it in python from now on
write.csv(dados, "data_original_2017_to_2022.csv")

# Final observation: need to modify the datafile (anything), restore, and resave file (equal to original) to work without utf-8 errors