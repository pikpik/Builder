get () {

	if test ! -d $directory

	then

		echo Getting

		git clone $repository $directory > /dev/null

	fi

}


update () {

	echo Updating

	(
		cd $directory

		git pull > /dev/null
	)

}
