class CommentsController < ApplicationController
  def create
    @announcement = Announcement.find(params[:announcement_id])
    @comment = @announcement.comments.create(params[:comment].permit(:name, :body))
    redirect_to announcement_path(@announcement)
  end
  def destroy
    @announcement = Announcement.find(params[:announcement_id])
    @comment = @announcement.comments.find(params[:id])
    @comment.destroy
    redirect_to announcement_path(@announcement)
  end
end
