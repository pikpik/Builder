report () {

	echo Reporting

	lastlineoflog	\
	| status	\
	| logstatus

}

lastlineoflog () {

	(
		cd $directory

		tail -2 $log
	)

}

status () {

	( grep -i "error" 1>/dev/null \
	  && echo "Build Failed for `commitID`"
	) || echo "Build Successful for `commitID`"

}

logstatus () {

	tee -a logs/builds.log

}

logbuilder () {

	tee -a logs/builder.log

}
