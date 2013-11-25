LogAnalyzer
===========

Log Analyzer in Hadoop

LogAnalyzer (MapReduce) (LogAnalyze.Jar):

LogAnalyzer gets input directory &amp; output file name as input.
It adds all files in the directory into input path. (Assumption log files are in hdfs.)
Mapper provides key value '1' for all lines in all files.
Reducer combines all values of key '1' and collect values with key as NullWritable.
 
So we get one large file with all input values.
Sample Input &amp; Output for this program is available as Merge.Zip.

ProjectPigScript.Pig:

It segregate Error log and Info log, which are saved in two different files.
The segregation happens as per category value.

Sample Output of pig is available as Pig.zip.

ProjectHiveQueries:

I have given all the queries that I used in a txt file.
For final select queries, I have attached their results as well.

The queries are written to display frequent errors &amp; longest running module.
