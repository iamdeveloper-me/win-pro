# grape controller
class GrapesController < InheritedResources::Base

  def index
    @about_detail = Detail.find_by(detail_type: "About")
    @blog_detail = Blog.order_by_desc.take
    @region_detail = Detail.find_by(detail_type: "Region")

    @grapes = Grape.where(publish: true)
  end

  def week
    @grapes = Grape.where(publish: true, week_pub: true)
  end
end
