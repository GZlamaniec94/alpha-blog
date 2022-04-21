class CategoriesController < ApplicationController
    def new
        @category = Category.new
    end    

    def index 
        @categories = Category.ordered.paginate(page: params[:page], per_page: 5 )
    end
    
    def show
        @category = Category.find(params[:id])
    end    

    def create
        @category = Category.new(category_params)
        # @article.user = current_user
        if  @category.save
            flash[:notice] = "Category was created successfully"
            redirect_to @category      
        else
            render 'new'
        end 
    end   
    
    private

    def category_params
        params.require(:category).permit(:name)    
    end

end    