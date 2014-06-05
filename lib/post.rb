class Post

attr_accessor :title,:text,:date,:user,:filename

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


end
