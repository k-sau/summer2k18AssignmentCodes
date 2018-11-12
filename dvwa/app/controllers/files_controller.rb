class FilesController < ApplicationController

  def index
    @list = `ls textFiles/`
  end

  def view
    @@fileName = params[:file]
    redirect_to :action => 'show'
  end

  #Vulnerable code
  def show
    @fileContent = `cat textFiles/#{@@fileName}`
  end

=begin
  def show
    if !@@fileName.match(/^(([\w])|(\.)|(\-)|( ))*$/).nil?
      @fileContent = `cat "textFiles/#{@@fileName}"`
    else
      redirect_to :action => 'index'
    end
  end
=end
end
