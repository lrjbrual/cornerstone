class FaithController < ApplicationController

  def index
    @title = "What we believe"
    @scriptures = "1. The Scriptures"
    @aboutScriptures = 'We believe that the 66 books of the Old and New Testament are indeed the insprired 
    word of God and we have that word preserved perfectly today in the King James Bible. We believe that God used men to pen His words as 
    they were moved of the Holy Ghost. We hold that the Bible is the final authority in all matters of faith and practice.
    (Psalm 12:6-7, II Timothy 3:16, II Peter 1:19-20, Matthew 24:35, Revalation 22:18-19'
    @head = "2. The Godhead"
    @godHead = "We believe in one triune God, eternally existing in three persons, God the Father, God the Son, and God the Holy Spirit.
    Each share diving attributes, character, and nature while having individual identity and a specific order. (Deuteronomy 6:4, 1 John5:7, Matthew 28:19 John 14:10,26)"
    @diety = "3. The Diety of Christ"
    @dietyOfChrist = "We believe that the Lord Jesus Christ was indeed God manifest in the flesh. Conceived by the Holy Ghost, 
    eternally existing yet born of a virgin, lived a sinless life, and suffered the penalty of sin on our behalf. He was crusified,
    buried, and rose again the third day making a way for us to have eternal life. (I Timothy 3:16, John 1:14, Isiah 7:14, Luke 1:27, I Cor. 15:1-6)"
    @salvation = "4. Salvation"
    @aboutSalvation = "We believe that man is unable to save himself. Man is born in trespasses and sins, he must bbe born again.
    We believe that a man is saved by grace through faith plus nothing. Jesus Christ is the only way to heaven. Man must believe on the Lord Jesus Christ
    to be saved. (Romans 5:12, John 3:3-6, Ephesians 2:8-9, Romans 10:13)"
    @church = "5. Church"
    @aboutChurch = "We believe the New Testament local church is a body of believers called out to be the center of action for the Lord's work.
    It is made up of born again, baptized by emersion, believers. The local church is to be the visible manifestation of Christ's body. (Matthew 28:19, I Corinthians 12:12-27)"
    @last = "6. Last Thing"
    @lastThing = "We believe in the soon return of the Lord Jesus Christ in the air to call out the saved before the beginning of the Tribulation period.
    We believe that after the Tribulation period the Lord will return to set up his Millennial kingdom which was promised to the nation of Israel, Satan will
    be bound for 1000 years and Christ will physical reign on earth. After this time SAtan will be loosed a short time and Christ will judge all sin and wrong.
    At this time Christ will judge all sinners, casting them into the lake of fire where Satan will be cast, and the Lord will bring about a new Heaven and new earth. 
    (I Thessalonians 1:10, 4:15-18, Matthew 24:15-17, Daniel 9:25-27, Revelation 20:1-3, Revelation 20:10-15,21:1)"

  end

end
