wait () {

	echo Waiting

	sleep $secondsBeforeRetry

}

commitID () {

	(
		cd $directory

		git log --pretty="%h" | head -1
	)

}

makeEnvironment () {

	if test ! -d logs

	then

		mkdir logs

	fi

}
