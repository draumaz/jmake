#!/bin/bash
# draumaz/jmake, 2021

if [ "$1" = -c ]; then rm *.{txt,jar} > /dev/null 2>&1; exit; fi # Directory cleanup for temp files
echo -e "\nJMake, by draumaz (2021)\n"
echo -n "Creating classes..."
if javac *.java; then echo "     PASS"; else echo -e "\nFailed to generate classes."; exit; fi # Initial class creation via javac
echo -n "Compressing..."
if jar cfe out.jar main *; then echo "          PASS"; else echo -e "\nFailed to compress into JAR."; exit; fi # Jar compression using main func as entry point
echo -n "Cleaning up..."
if rm *.class; then echo "          PASS"; else echo -e "\nFailed to clean directory."; exit; fi # Delete class files for clearer directory navigation
echo -e "\nDone!\n"
exit
