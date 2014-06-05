require 'spec_helper'

describe User do

  before :each do

  @user = User.new :Sebastian	
  @user.add_post(Date.new(2001-1-2),"Texto prueba","Titulo")
  @user.add_post(Date.new(2001-1-1),"Segundo texto prueba","Titulo dos")
  end

  describe "#initialize" do
    it "should properly initialize with an username" do
	expect(@user).to be_kind_of(User)
    end
    it "username should be Symbol" do
	expect(@user.username).to be_kind_of(Symbol)
    end

    it "username should be the one specified" do
	expect(@user.username).to eql(:Sebastian)
    end


  end

  describe "#add_post" do
    it "should add a post to the posts list" do
	expect(@user.post_array.size).to eql(2)
    end

  end

  describe "#list" do
    it "should properly ouput all posts" do
	entry1 = "Sebastian, 2001-1-1" + "\n" +"Titulo dos" + "\n" + "Segundo texto prueba" + "\n"
	
    end

  end

  describe "#find_post_by_title" do
    it "should return a post by title"
    it "should return the first one if there are several with the same name"
  end

end
