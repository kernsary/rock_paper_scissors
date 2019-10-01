require('sinatra')
require('sinatra/contrib/all') if development?
require('pry')

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get '/play/:hand1/:hand2' do
  @outcome = RockPaperScissors.play( params[:hand1], params[:hand2] )
  erb (:result)
end
