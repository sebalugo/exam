class Post

attr_accessor :title,:text,:date,:user,:filename,:tags

def initialize title=nil,text=nil,date=nil,user=nil,filename=nil

	if filename.nil? 	
	@title = title
	@text = text
	@date = date
	@user = user
	@tags = []
	else
	file = YAML::load(File.open(filename,"r"))
	@title = file.title
	@text = file.text
	@date = file.date
	@user = file.user
	@tags = file.tags
	end
	
end

def summary

	text.split[0...10].join(' ')

end

def tagme *args

	args.each do |arg|

	tags.push(arg)	

	end

end

def same other_post

	@title == other_post.title && @text == other_post.text && @date == other_post.date

end

def entry

entry_s = @user.username.to_s
entry_s += ", " + @date.to_s + "\n" 
entry_s += @title + "\n"
entry_s += '"'+@text+'"'+"\n"
entry_s += "Tags: "
tags.each {|tag| entry_s+= ":"+"tag"}
entry_s += "\n"
entry_s

end

def display_entry

puts entry

end

def save
	file_n = paramet+".yml"
	File.open(file_n,"w") do |f|
	f.write	YAML::dump (self)
	end
end

def paramet

	save_name = @title.downcase
	save_name.gsub(' ','-')

end

end
