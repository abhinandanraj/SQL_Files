## Background
### What is SQL?
-> One of the most sought out skills in the job market<br>
-> Database management tool<br>
-> Querying language<br>
-> Multiple tables can be imported, stored, and manipulated in SQL databeses<br>
-> Table schemas used (connecting and linking tables)<br>

### Why is SQL so important?
-> Used in large/blue-chip companies for managing databases<br>
-> The demand for SQL has increased exponentially over time<br>
-> There are many different versions of SQL (T-SQL, MySQL, PostGres SQL, etc.)<br>
-> Used very commonly across different functions in a company (analytics, reporting, development)<br>

## Importing Data

### Most Common Data File Types
-> Excel<br>
-> CSV / Delimited (Recommended)<br>

### Excel
-> Pick the Excel file and the sheet/tab which needs to be imported<br>
-> The data type assigned to a column in Excel influences the data type of the column imported into SQL<br>

### CSV / Delimited (Flat File)
-> Also referred to as a *Flat File*<br>
-> Ensure that the correct delimiter is being used (this separates each column)<br>
-> By default, all columns are assigned the data type `varchar` (string)<br>

### Other File Types
-> XML (different format, usually CSV can be extracted instead)<br>
-> Access to other databases (tables linked from another database)<br>
-> These methods are not covered in this course<br>

### SQL Version Used
-> Microsoft SQL Server is used in this course<br>
-> SQL Server Management Studio (SSMS) is used<br>
-> SQL Server 2019 version is used<br>

### Importing Data – Step 1
-> Right click on the database in the left pane<br>
-> Select **Tasks** from the dropdown menu<br>
-> Click **Import Data**<br>

### Importing Data – Step 2
-> Import wizard window opens<br>
-> Click **Next** to start the import process<br>

### Importing Data – File Configuration
-> Select file format (use **Flat File Source** for CSV)<br>
-> Choose **Delimited** as file format<br>
-> Define text qualifiers if present (usually `"`)<br>
-> Specify number of header rows to skip<br>

### Importing Data – Preview and Delimiters
-> Preview sample data<br>
-> Define column and row delimiters<br>
-> Wizard usually auto-detects delimiters<br>

### Importing Data – Column Settings
-> Review assigned data types<br>
-> Adjust column length if needed<br>
-> Increase column size to store longer strings<br>

### Importing Data – Table Preview
-> Preview how the table will appear in SQL<br>

### Importing Data – Destination
-> Select **SQL Server Native Client 11.0**<br>
-> Ensures data is imported into the correct database<br>

### Importing Data – Renaming
-> Schema and table name can be changed during import<br>

### Importing Data – Execution
-> Select **Run immediately** option<br>
-> Start the import process<br>

### Importing Data – Completion
-> Green ticks indicate success<br>
-> Message *“The execution was successful”* confirms import<br>
-> Table is ready to use<br>

### Summary
-> CSV files are easier to import and less error-prone<br>
-> Excel files are more susceptible to import errors<br>
-> Always verify delimiter and text qualifier settings<br>
