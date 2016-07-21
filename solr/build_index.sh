#!/bin/bash

#Uncomment the lines below to drop and re-create the index if needed
#Remember to copy solrconfig.xml back to ~/solr/solr-6.1.0/server/solr/dskb-core/conf/solrconfig.xml  and re-start solr
#~/solr/solr-6.1.0/bin/solr delete -c dskb-core -p 8082
#~/solr/solr-6.1.0/bin/solr create -c dskb-core -p 8082
~/solr/solr-6.1.0/bin/post -p 8082 -c dskb-core Solutions.csv -params 'f.tools_used.split=true&f.authors.split=true&f.concepts_used.split=true'
~/solr/solr-6.1.0/bin/post -p 8082 -c dskb-core Concepts.csv
~/solr/solr-6.1.0/bin/post -p 8082 -c dskb-core Tools.csv
