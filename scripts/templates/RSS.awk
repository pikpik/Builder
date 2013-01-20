BEGIN {

	print (
		'<?xml version="1.0" encoding="UTF-8" ?>'
		'<rss version="2.0">'
		'<channel>'
			'<title>Builder</title>'
			'<description>Build results for ' $repository '.</description>'
			'<link>../logs/</link>'
			'<lastBuildDate></lastBuildDate>'
			'<pubDate></pubDate>'
			'<ttl>1800</ttl>'
	)

}

{

	status = $0
	description = status
	commit = $2
	log = "../logs/" commit ".log"
	guid = commit

	getDate = open ( "date " log )
	read date
	close ( getDate )

	print (
		'<item>'
			'<title>' status '</title>'
			'<description>' description '</description>'
			'<link>' log '</link>'
			'<guid>' guid '</guid>'
			<pubDate>''</pubDate>'
		'</item>'
	)

}

END {

	print (
		'</channel>'
		'</rss>'
	)

}
