OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :facebook, ENV['195121223962670'], ENV['d57a34e26f55845f60f8c9760ed293cb']	
end
