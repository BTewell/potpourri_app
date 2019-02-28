class Api::GamePagesController < ApplicationController

  def hello_method
    render 'hello_view.json.jbuilder'
  end
end
