class NtccController < ApplicationController

  def index
    render html: params[:data].html_safe
  end

  def create

  end

end
