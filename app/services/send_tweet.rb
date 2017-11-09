require 'twitter'

class SendTweet

  def initialize(string)
  	@string = string
  end

  def log_in_to_twitter
  	@client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "44oQRmFJoVupwltxiFaSSyTtx"
	  config.consumer_secret     = "ZegmRozix1UaGtvLJEx7SKLoXnb9nMItTKTjyKjWSu82qRBLJl"
	  config.access_token        = "918109585000583168-DvTZt3hVz3n23Af8OdxXFFREBQPs217"
	  config.access_token_secret = "WmDRGilxTTxCbXhIlFdRIA47ZY6WSdMNTrl3Qmif5Qr9t"
		end
  end

  def perform
  	log_in_to_twitter
  	@client.update(@string)
  end
end