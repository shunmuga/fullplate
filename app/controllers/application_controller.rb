class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def fp_hello
    render html: "This is FullPlate. Hello"
  end


end
