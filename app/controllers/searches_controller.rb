class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @word = params[:word]

    if @range == "User"
      @users = User.looks(params[:search], @word)
      render 'searches/search_results'

    else
      @books = Book.looks(params[:search], @word)
      render 'searches/search_results'
    end
  end

end
