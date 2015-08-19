class TagsController < ApplicationController
    before_filter :require_login, except: [:new, :create]
    
    def show
        @tag = Tag.find(params[:id])
    end
    
    def index
        @tag = Tag.all
    end
    
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        flash.notice = "Tag Deleted!"
        redirect_to tags_path
    end
end
