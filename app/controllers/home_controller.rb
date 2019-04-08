class HomeController < ApplicationController
  def index
    @scriptures = "The Scriptures"
    @aboutScriptures = 'We believe that the 66 books of the Old and New Testament are indeed the insprired 
    word of God and we have that word preserved perfectly today in the King James Bible. We believe that God used men to pen His words as 
    they were moved of the Holy Ghost. We hold that the Bible is the final authority in all matters of faith and practice.
    (Psalm 12:6-7, II Timothy 3:16, II Peter 1:19-20, Matthew 24:35, Revalation 22:18-19)'
  end
end
