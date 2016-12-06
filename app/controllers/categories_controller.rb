class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    render("categories/index.html.erb")
  end

  def show
    @state = State.new
    @purchase = Purchase.new
    @category = Category.find(params[:id])

    render("categories/show.html.erb")
  end

  def new
    @category = Category.new

    render("categories/new.html.erb")
  end

  def create
    @category = Category.new

    @category.type = params[:type]
    @category.sub_categories = params[:sub_categories]
    @category.photo_url = params[:photo_url]
    @category.lifespan = params[:lifespan]
    @category.refrigeration = params[:refrigeration]
    @category.storage_suggestions = params[:storage_suggestions]

    save_status = @category.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/categories/new", "/create_category"
        redirect_to("/categories")
      else
        redirect_back(:fallback_location => "/", :notice => "Category created successfully.")
      end
    else
      render("categories/new.html.erb")
    end
  end

  def edit
    @category = Category.find(params[:id])

    render("categories/edit.html.erb")
  end

  def update
    @category = Category.find(params[:id])

    @category.type = params[:type]
    @category.sub_categories = params[:sub_categories]
    @category.photo_url = params[:photo_url]
    @category.lifespan = params[:lifespan]
    @category.refrigeration = params[:refrigeration]
    @category.storage_suggestions = params[:storage_suggestions]

    save_status = @category.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/categories/#{@category.id}/edit", "/update_category"
        redirect_to("/categories/#{@category.id}", :notice => "Category updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Category updated successfully.")
      end
    else
      render("categories/edit.html.erb")
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy

    if URI(request.referer).path == "/categories/#{@category.id}"
      redirect_to("/", :notice => "Category deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Category deleted.")
    end
  end
end
