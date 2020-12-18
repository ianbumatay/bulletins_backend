class CommentsController < ApplicationController 

    def index 
      # render json: Comment.all.map { |comments| CommentSerializer.new(comments) }
    
      comments = Comment.all 
      render json: CommentSerializer.new(comments)
    end 

    def create 
      #byebug
      comment = Comment.new(comment_params) 

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
      params.require(:comment).permit(:content, :bulletin_id) 
    end
end
