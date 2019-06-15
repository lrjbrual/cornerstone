class HomeController < ApplicationController
  def index
    @titleCaption = 'Cornerstone Baptist Church is an Independent Baptist Church'
    @verse = 'John3:16'
    @scriptures = "The Scriptures"
    @aboutScriptures = 'We believe that the 66 books of the Old and New Testament are indeed the insprired 
    word of God and we have that word preserved perfectly today in the King James Bible. We believe that God used men to pen His words as 
    they were moved of the Holy Ghost. We hold that the Bible is the final authority in all matters of faith and practice.
    (Psalm 12:6-7, II Timothy 3:16, II Peter 1:19-20, Matthew 24:35, Revalation 22:18-19)'
    @abouts = About.all
    @sermon = Sermon.all
    @contact = Email.new(params[:email])
  end

  def create
    @contact = Email.new(params[:email])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        format.html { render '/'}
        format.js   { flash[:success] = @message = "Thank you for your message. We will get back to you soon! God Bless" }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
    
  end

end