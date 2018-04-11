class VeryBestDishesBookmarksController < ApplicationController
  def index
    @very_best_dishes_bookmarks = VeryBestDishesBookmark.all

    render("very_best_dishes_bookmarks/index.html.erb")
  end

  def show
    @very_best_dishes_bookmark = VeryBestDishesBookmark.find(params[:id])

    render("very_best_dishes_bookmarks/show.html.erb")
  end

  def new
    @very_best_dishes_bookmark = VeryBestDishesBookmark.new

    render("very_best_dishes_bookmarks/new.html.erb")
  end

  def create
    @very_best_dishes_bookmark = VeryBestDishesBookmark.new

    @very_best_dishes_bookmark.dish_id = params[:dish_id]
    @very_best_dishes_bookmark.cuisine_id = params[:cuisine_id]
    @very_best_dishes_bookmark.restaurant_id = params[:restaurant_id]

    save_status = @very_best_dishes_bookmark.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/very_best_dishes_bookmarks/new", "/create_very_best_dishes_bookmark"
        redirect_to("/very_best_dishes_bookmarks")
      else
        redirect_back(:fallback_location => "/", :notice => "Very best dishes bookmark created successfully.")
      end
    else
      render("very_best_dishes_bookmarks/new.html.erb")
    end
  end

  def edit
    @very_best_dishes_bookmark = VeryBestDishesBookmark.find(params[:id])

    render("very_best_dishes_bookmarks/edit.html.erb")
  end

  def update
    @very_best_dishes_bookmark = VeryBestDishesBookmark.find(params[:id])

    @very_best_dishes_bookmark.dish_id = params[:dish_id]
    @very_best_dishes_bookmark.cuisine_id = params[:cuisine_id]
    @very_best_dishes_bookmark.restaurant_id = params[:restaurant_id]

    save_status = @very_best_dishes_bookmark.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/very_best_dishes_bookmarks/#{@very_best_dishes_bookmark.id}/edit", "/update_very_best_dishes_bookmark"
        redirect_to("/very_best_dishes_bookmarks/#{@very_best_dishes_bookmark.id}", :notice => "Very best dishes bookmark updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Very best dishes bookmark updated successfully.")
      end
    else
      render("very_best_dishes_bookmarks/edit.html.erb")
    end
  end

  def destroy
    @very_best_dishes_bookmark = VeryBestDishesBookmark.find(params[:id])

    @very_best_dishes_bookmark.destroy

    if URI(request.referer).path == "/very_best_dishes_bookmarks/#{@very_best_dishes_bookmark.id}"
      redirect_to("/", :notice => "Very best dishes bookmark deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Very best dishes bookmark deleted.")
    end
  end
end
