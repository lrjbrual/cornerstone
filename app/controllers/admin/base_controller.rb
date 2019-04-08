module Admin

  class BaseController < ApplicationController

    # protect_from_forgery with: :exception
    layout 'admin/application'

    # include SessionsHelper
    
  end
  
end