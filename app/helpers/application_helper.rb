module ApplicationHelper
  def url_formatter args
	link_to args[:document][args[:field]][0], args[:document][args[:field]][0] 
  end
  def tools_linker args={}
	args[:document]
	args[:field]
	args[:value]
	#
	# for each element passed over, translate into a link that will navigate user directly to the Tool search entry
	#
	links = String.new
	$i = 0
	args[:document][args[:field]].each do 
	  urlstring = link_to args[:document][args[:field]][$i], "/?f%5Brecord_type%5D%5B%5D=Tool&search_field=title&q=%22#{args[:document][args[:field]][$i]}%22" 
	  if $i == 0
	  	links = urlstring
	  else
	  	links = links + ", " + urlstring
	  end
	  $i +=1 
	end
	return links
  end
  def concepts_linker args
	#
	# for each element passed over, translate into a Concept that will navigate user directly to the Tool search result
	#
	links = String.new
	$i = 0
	args[:document][args[:field]].each do 
	  urlstring = link_to args[:document][args[:field]][$i], "/?f%5Brecord_type%5D%5B%5D=Concept&search_field=title&q=%22#{args[:document][args[:field]][$i]}%22"
	  if $i == 0
	  	links = urlstring
	  else
	  	links = links + ", " + urlstring
	  end
	  $i +=1 
	end
	return links
  end
end
