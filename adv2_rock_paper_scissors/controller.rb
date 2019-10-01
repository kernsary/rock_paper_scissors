require('sinatra')
require('sinatra/contrib/all') if development?
require('pry')

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

# @@hand1 = nil
#
# get '/player1/:hand1' do
#   @@hand1 = params[:hand1]
#   return nil
# end
#
# get '/player2/:hand2' do
#   @hand2 = params[:hand2]
#   @outcome = RockPaperScissors.play(@@hand1, @hand2)
#   erb(:result)
# end

get '/player1/:hand1' do
  response = RockPaperScissors.player1(params[:hand1])
  # # if response = "OK"
    erb(:player1)
  # end
end

get '/player2/:hand2' do
  @outcome = RockPaperScissors.player2(params[:hand2])
  erb(:result)
end

get '/' do
  erb (:welcome)
end

get '/player1' do
  erb(:player1)
end

get '/player2' do
  erb(:player2)
end
