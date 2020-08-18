class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @search = params[:search]

    if @search.present?
      User.where(cuisine: params[:search], chef: true)
    end
  end

end
