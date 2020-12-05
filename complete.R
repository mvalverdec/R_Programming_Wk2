# Air Pollution Solution
# Coursera R_Programming
# Marco V. Valverde C.

# File name: complete.R

# Reports the number of completely observed cases in each data file

complete <- function(directory, id = 1:332){
        
        # Get full directory into data_directory
        data_directory <- paste(getwd(), "/", directory, "/", sep = "")
        
        # setting up variables
        file_list <- list.files(data_directory)
        col_ID <- vector()
        col_cases <- vector()
        
        # set up a for to check each file from id
        
        for (i in id) {
                specific_file <- paste(data_directory, file_list[i], sep = "")
                data_in_file <- read.csv(specific_file)
                
                # set up columns
                col_ID <- c(col_ID, i)
                col_cases <- c(col_cases, sum(complete.cases(data_in_file)))
        }
        
        # with both columns ready, let's build the data.frame
        data <- data.frame(col_ID = col_ID, col_cases = col_cases)
        data
}

