class AboutController < ApplicationController

  def index 
    @contacttitle = 'Church Contact Information: '
    @contactperson = 'Contact Person: '
    @contactnumber = 'Contact Number: '
    @emailaddress = 'Email Address: '
    @churchaddress = 'Our Church Address: '
    @abouts = About.all
    # @about = About.find(params[:id])
  end
end
