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
  hand1 = params[:hand1]
  choice_OK = RockPaperScissors.check_input(hand1)
  if choice_OK
    RockPaperScissors.player1(params[:hand1])
    erb(:player1)
  else
    erb(:new_choice_1)
  end
end

get '/player2/:hand2' do
  hand2 = params[:hand2]
  choice_OK = RockPaperScissors.check_input(hand2)
  if choice_OK
    @outcome = RockPaperScissors.player2(params[:hand2])
    erb(:result)
  else
    erb(:new_choice_2)
  end
end

  get '/' do
    erb (:home)
  end

  get '/player1' do
    RockPaperScissors.reset()
    erb(:player1)
  end

  get '/player2' do
    erb(:player2)
  end
