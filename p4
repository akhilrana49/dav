import xlrd data1=pd.read_excel("attendance1.xlsx") E_file1=pd.DataFrame(data1) data2=pd.read_excel("attendance2.xlsx") E_file2=pd.DataFrame(data2) print(E_file1)print(E_file2)

#a. Perform merging of the two dataframes to find the names of students who had attended the# workshop on both days.
table1= pd.merge(E_file1 , E_file2 , on="Name" , how ="inner") print("Merged table for students attending class on both days :") print(table1)

#b. Find names of all students who have attended workshop on either of the days.
table2= pd.merge(E_file1 , E_file2 , on="Name" , how ="outer") print("Merged table for students attending class on either of the days : ") print(table2)

#c Merge two data frames row-wise and find the total number of records in the data frame.
table3=pd.concat([E_file1 , E_file2], axis=0) print("Row wise merged dataframes : ") print(table3)table3.info()

#d. Merge two data frames and use two columns names and duration as multi-row indexes. Generate# descriptive statistics for this multi-index. table4=np.concatenate((E_file1 , E_file2), axis=0)
print(table4) table4_df=pd.DataFrame(table4) table4_df.describe()


