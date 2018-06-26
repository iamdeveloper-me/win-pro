class WinesController < InheritedResources::Base

	def index
    @about_detail = Detail.find_by(detail_type: "About")
    @blog_detail = Blog.order_by_desc.take
    @grape_detail = Grape.order_by_desc.take

    @wines = Wine.where(publish: true)
	end

	def week
		@wines = Wine.where(publish: true, week_pub: true)
	end

end
