class CommentsController < ApplicationController
        def create
                @post = Post.find(params[:post_id])
                @comment = @post.comments.create!(params[:comment])
                format.html {  redirect_to @post }
                format.js
        end
end
