class FilesController < ApplicationController

  def index
    @list = `ls textFiles/`
  end

  def view
    @@fileName = params[:file]
    redirect_to :action => 'show'
  end

  def show
    @fileContent = `cat textFiles/#{@@fileName}`
  end

end
