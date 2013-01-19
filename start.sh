#!/bin/sh

. scripts/settings.sh
. scripts/get.sh
. scripts/build.sh
. scripts/report.sh
. scripts/tools.sh

{
	echo Starting

	get

	makeEnvironment

	while true

	do
		update

		clean

		build

		report

		saveBuildLog

		wait
	done
} \
| logbuilder
