import pandas as pd
import numpy as np


#Task 1: Read the given dataset
def read_data_from_csv():
    #df =read the 'fatality.csv' file
    df = pd.read_csv('fatality.csv')

    return df



#Task 2: Clean the given dataset
def data_cleaning():
    # do not edit the predefined function name
    df = read_data_from_csv()
    # Remove the 'Unnamed' column
    df = df.drop('Unnamed', axis=1)
    return df



#Task 3: Export the cleaned dataset to "fatalities_cleaned.csv"
def export_the_dataset():
    # do not edit the predefined function name
    df=data_cleaning()
    #write your code to export the cleaned dataset and set the index=false and return the same as 'df'
    df.to_csv('fatalities_cleaned.csv', index=False, encoding='utf-8')

#TASK 4: Load the Cleaned dataset 'fatalities_cleaned.csv' to the database provided.
#follow the instruction in the Task 4 description and complete the task as per it.

#check if mysql table is created using "fatalities_cleaned"
#Use this final dataset and upload it on the provided database for performing analysis in  MySQL
#To run this task click on the terminal and click on the run project
