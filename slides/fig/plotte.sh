#!/bin/bash

# plotte.sh , the script that plots

# arguments should be paths to .gp files. When none is given, the script will
# run ALL .gp scripts below the current folder

ROOT=`pwd`

if [[ $# -eq 0 ]]
then
	# this will include common.gp but it will just be a useless gnuplot invocation...
	files=`find . -iname '*.gp'`
else
	files=$*
fi

function plotte() {
	echo "plotting $1 ..."
	local dirname=`dirname $1`
	local basename=`basename $1`

	cd $dirname

	if gnuplot $basename # stop here
	then
		if ls *.ps &> /dev/null # common.gp doesn't output anything !
		then
			for f in *.ps
			do
				base=`basename $f .ps`
				epstool --quiet --copy --bbox $f $f.temp
				epstopdf $f.temp --outfile=$base.pdf
				rm $f $f.temp
			done
		else
			echo "nothing to do with $1"
		fi
	else
		echo "gnuplot failed on $1 - no PDF created"
	fi

	cd $ROOT
}


for f in $files
do
	plotte $f
done
