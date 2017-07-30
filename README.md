# getting and cleaning data course project

First, the script makes sure data was downloaded and extracted correctly in R's working directory.
Then it reads the 8 data and labeling files to 8 variables.
Next, test and train datasets are combined, columns are given names, and subject and activity columns are mached.
Activity numeric values are replaced with discriptive strings.
Using aggregate() the data is grouped by subjects and activities and means are calculated for each column.
Lastly, all unnecessary variables are deleated leaving only x and x_means _, and write it to a file namedstep_5.txt.
