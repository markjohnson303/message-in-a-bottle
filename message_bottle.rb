class MessageInABottle < Sinatra::Base

	@@trips = 0

	get '/' do
		erb :index
	end

	get '/beach' do
		@@trips +=1
		@trips = @@trips
		@location = params[:location]
		erb :beach
	end

end

