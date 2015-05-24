class CommentsController < ApplicationController
  http_basic_authenticate_with name: "giaunv", password: "secret", only: :destroy

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @comment = @hotel.comments.create(comment_params)
    redirect_to hotel_path(@hotel)
  end

  def destroy
    @hotel = Hotel.find(params[:hotel_id])
    @comment = @hotel.comments.find(params[:id])
    @comment.destroy

    redirect_to hotel_path(@hotel)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :rating, :body)
  end
end