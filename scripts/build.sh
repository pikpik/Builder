build () {

	echo "Building `commitID`"

	(
		cd $directory

		sh build.sh -m i386 distribution	\
			1>>$log				\
			2>>$log
	)

}

saveBuildLog () {

	cp $directory/$log logs/`commitID`.log

}

clean () {

	echo Cleaning

	(
		cd $directory

		rm -rf $trash
	)

}
