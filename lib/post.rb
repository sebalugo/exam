class Post

attr_accessor :title,:text,:date,:user,:filename,:tags

def initialize title=nil,text=nil,date=nil,user=nil,filename=nil

	if filename.nil? 	
	@title = title
	@text = text
	@date = date
	@user = user
	else
	file = YAML::load(File.open(filename,"r"))
	@title = file.title
	@text = file.text
	@date = file.date
	@user = file.user
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


end
