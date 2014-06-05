require 'spec_helper'

describe Post do


  before :each do
	@user = User.new :Sebas
	@n_post = Post.new "Hola M","Texto",Date.new(2001,1,1),@user
 	@n_post.save
	@post = YAML::load(File.open("hola-m.yml","r"))
	@post_t = Post.new "Hola M","Texto con muchas palabras para probar el summary si si ejemplo 1 2 3 probando",Date.new(2001,1,1),@user
  end


  describe "#initialize" do

    context "with a yaml file" do
      it "should properly load a post from a yaml file" do
	expect(@post).to be_kind_of(Post)
      end
     end

    context "with proper attributes" do
      it "should properly initialize a post instance" do
	expect(@n_post).to be_kind_of(Post)
      end
    end
  end
  describe "#summary" do
    it "should display the first 10 words of text" do
	string_sum = "Texto con muchas palabras para probar el summary si si"
	expect(string_sum).to eql(@post_t.summary)
    end

  end

  describe "#tagme" do
    it "should be able to tag with 1 tag" do
	@n_post.tagme (:home)
	expect(@n_post.tags.size).to eql(1)
    end
    it "should be able to tag with 4 tags" do
	@n_post.tagme :home , :elec , :pc , :dev
	expect(@n_post.tags.size).to eql(4)
    end

  end

  describe "#same?" do
    it "should return true if Title, Date and Text are the same"
    it "should return false if Title, Date and Text are not the same"
  end

  describe "#display_entry" do
    it "should properly output a post entry"
  end

  describe "#save" do
    it "should save the post to a YAML file"
  end

end
