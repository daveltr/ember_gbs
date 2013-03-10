class ApiController < ApplicationController
  def by_title
    title=params[:title]
    @books=FindBookService.new().by_title(title)
    respond_to do |format|
      format.json { render json:@books.to_json }
    end
  end
end
