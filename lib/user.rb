class User 

attr_accessor :username,:post_array

def initialize username

	@username = username
	@post_array = []

end

def add_post date,text,title

	post = Post.new title,text,date,@username
	@post_array.push(post)

end



end
