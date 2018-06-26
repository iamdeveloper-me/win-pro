class BlogsController < InheritedResources::Base

	def index
    @blogs = Blog.where(publish: true)
	end
end
