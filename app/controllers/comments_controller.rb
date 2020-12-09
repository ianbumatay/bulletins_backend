class CommentsController < ApplicationController 

    def index 
      comments = Comment.all 
      render json: CommentSerializer.new(comments)
    end 

    def create 
      commnent = Comment.new(comment_params) 

      if comment.save 
        render json: CommentSerializer.new(comment)
      else 
        render json: { message: 'Comment not found' } 
      end
    end 

    def destroy 
      comment = Comment.find(params[:id])
      comment.destroy 
    end 

    private 

    def comment_params 
      params.require(:comment).permit(:content) 
    end
end
