class RestApi::ApiController < RestApi::ApplicationController 
  def get_asset_sets
    render "api/asset_sets/index.json"
  end
  
  def post_sessions
    if params[:username] == 'valid' and params[:password] == 'valid'
      render "api/sessions/valid.json"
    else
      render "api/sessions/invalid.json", :status => :bad_request
    end
  end 
  
  def delete_asset_image
    render "api/asset_images/destroy.json"
  end
  
  def post_asset_images
    render "api/asset_images/create.json"
  end
end