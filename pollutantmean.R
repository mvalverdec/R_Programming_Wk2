# Air Pollution Solution
# Coursera R_Programming
# Marco V. Valverde C.

# File name: Pollutantmean.R

# The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'

pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        # Get full directory into data_directory
        data_directory <- paste(getwd(), "/", directory, "/", sep = "")
        
        # Var declaration
        file_list <- list.files(data_directory)
        data <- 0 # erase the vector data
        
        # Let's do a for to read a specific file from IDs and bind them
        for (i in id) {
                specific_file <- paste(data_directory, file_list[i], sep = "")
                data_in_file <- read.csv(specific_file)
                data <- rbind(data, data_in_file)
        }
        mean(data[[pollutant]], na.rm = T)
}
