#!/bin/bash

for file_name in main1_1 main1_2 main1_3; # running a for loop on array of file names
do
	touch ${file_name}_output # creating the proper file output
	txt_output=${file_name}_output # creaing a varible name for output file to use
	echo "writing file name to text output with corrosponding name"
	echo ${file_name}: >> $txt_output # what main is running
	echo >> $txt_output
	printf "file command output - " >> $txt_output # command seperator
	echo "command file output saved to output file"
	echo `file $file_name` >> $txt_output # writing the output of file command to output file 
	echo >> $txt_output
	printf "nm command output - " >> $txt_output # command seperator
	echo "writing library symbles to output file"
	echo `nm $file_name` >> $txt_output # writing the output of nm command to output file 
	echo >> $txt_output
	echo "ldd output to outfile"
	printf "ldd command output - " >> $txt_output # command seperator
	echo `ldd $file_name` >> $txt_output # writing the output of ldd command to output file 
	echo >> $txt_output
	echo "ltrace output to outfile"
	printf "ltrace command output - " >> $txt_output # command seperator
	echo `ltrace ./$file_name 2>&1` >> $txt_output # writing the output of ltrace command to output file 
	echo >> $txt_output
	echo "strace output to outfile"
	printf "strace command output - " >> $txt_output # command seperator
	echo `strace ./$file_name 2>&1` >> $txt_output  # writing the output of strace command to output file 
done

echo "done. look out output files in directory."
