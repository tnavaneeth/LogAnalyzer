A = LOAD '/home/mapr/output/project/Merge/part-00000' as (date:chararray, category:chararray, modulename:chararray, remarks:chararray, runtime:chararray);
ERR = FILTER A BY category == 'ERROR';
ERROR_LIST = FOREACH ERR GENERATE $0, $1, $2, $3;
INFO_LIST = FILTER A BY category == 'INFO';
STORE ERROR_LIST INTO '/home/mapr/output/project/Pig/ERROR_LIST' using PigStorage(',');
STORE INFO_LIST INTO '/home/mapr/output/project/Pig/INFO_LIST' using PigStorage(',');
