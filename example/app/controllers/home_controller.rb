class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all)
     @orders = ShopifyAPI::Order.find(:all)
     @checkouts = ShopifyAPI::Checkout.find(:all)
     @script_tags = ShopifyAPI::ScriptTag.find(:all)
  end
 
  def modal
  end
  
  def first_script_tag
    respond_to do |format|
      format.js
    end
  end

  def modal_buttons
  end

  def regular_app_page
  end

  def buttons
  end

  def help
  end

  def error
    raise "An error page"
  end

  def form_page
    if request.post?
      if params[:name].present?
        flash[:notice] = "Created #{ params[:colour] } unicorn: #{ params[:name] }."
      else
        flash[:error] = "Name must be set."
      end
    end
  end

  def pagination
    @total_pages = 3
    @page = (params[:page].presence || 1).to_i
    @previous_page = "/pagination?page=#{ @page - 1 }" if @page > 1
    @next_page = "/pagination?page=#{ @page + 1 }" if @page < @total_pages
  end

end
