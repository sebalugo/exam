class User 

attr_accessor :username,:post_array

def initialize username

	@username = username
	@post_array = []

end

def add_post date,text,title

	post = Post.new title,text,date,self
	@post_array.push(post)

end

def posts 

	@post_array.sort_by{|x| x.date}

end

def list

	@post_array.each{|post| post.display_entry}

end

def find_post_by_title title

	@post_array.select{|x| x.title == title}.first

end

def tag_cloud 
	
	freq = {}
	@post_array.each {|post|
	
	post.tags.each{|tags| 
	
	puts tags
	
	}


	}

end



end
