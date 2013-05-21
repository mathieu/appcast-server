# appcast-server

_Appcasting made easy_

## Design ideas
1. Anonymous : automatic appcast feed generation :
   - http://appcast-server/feed/product (rss+xml)
   - http://appcast-server/feed/product/version/relnote (release notes html)
   - http://appcast-server/feed/product/version/myapp-version.exe (binary)

2. Authenticated : web base interface to create new entries
   - User needs to be connected
   - User has a list of products
   - Product has a list of Items
   - Version has :
       - title
       - date
       - desctiption
       - release notes
       - file_name
       - file_length
       - file_type

--------------


### appcast compatible frameworks

Should work with these appcast compatible frameworks :

* _Mac_ : [Sparkle](http://sparkle.andymatuschak.org) 
* _Windows_ : [WinSparkle](http://winsparkle.org)
* _Multi OS_ : [Fervor](https://github.com/pypt/fervor)

### appcast definition

The RSS feed ("appcast") lists various versions of the application ("1.0", "1.1", "2.0", ...) that are available for download.

Sample xml file (original from [Sparkle sample](http://andymatuschak.org/files/sparkletestcast.xml))
``` xml
  <rss xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle" xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0">
		<channel>
			<title>Sparkle Test App Changelog</title>
			<link>http://andymatuschak.org/files/sparkletestcast.xml</link>
			<description>Most recent changes with links to updates.</description>
			<language>en</language>
			<item>
				<title>Version 2.0 (2 bugs fixed; 3 new features)</title>
				<description>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit.  
					Etiam quis elit vel nibh placerat facilisis in id leo. V  
					Cras vel convallis nunc. Suspendisse tristique massa ege 
					hendrerit pretium. Integer auctor sodales leo vel aliqua
					aucibus, convallis vitae dolor. Nam elementum, augue eu  
					vulputate est tortor non mauris. Fusce ut viverra ante. 
				</description>
				<pubDate>Wed, 09 Jan 2006 19:20:11 +0000</pubDate>
				<sparkle:releaseNotesLink>
					http://andymatuschak.org/files/notes.html
				</sparkle:releaseNotesLink>
				<enclosure url="http://andymatuschak.org/files/Sparkle Test App_2.0.zip" 
				           sparkle:version="2.0"
				           length="1600000"
				           type="application/octet-stream"
				           sparkle:dsaSignature="MCwCFAmB39sazl2xGIxSF8pHBbBh1zBLAhRmawuNanltHMlkCLv6R8OYiDRigQ=="/>
			</item>
		</channel>
	</rss>
```
