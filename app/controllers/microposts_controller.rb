class MicropostsController < ApplicationController

    def show    
        @microposts = Micropost.all         
    end

    def new
        @micropost = Micropost.new(:username => params[:micropost][:username], :content=>params[:micropost][:content])
        @micropost.save!
        @microposts = Micropost.all
        render 'show'
    end



end
