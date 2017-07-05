class PagesController < ApplicationController
  def about
   render template: "pages/#{params[:page]}"
 end
end
