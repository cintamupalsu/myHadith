class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper #Chapter 8.2
  
  def hello
     render html: "hello, world!"
   end
end
