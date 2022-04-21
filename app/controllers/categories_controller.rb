class CategoriesController < ApplicationController
    before_action :require_admin, except: [:index, :show]

   
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

    def require_admin
        if !(logged_in? && current_user.admin?)
            flash[:alert] = "You cannot create category"
            redirect_to categories_path
        end    
    end   

end    