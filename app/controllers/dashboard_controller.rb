class DashboardController < ApplicationController
  def index
    session[:game_mode] = ''

    scoreboard = {}
    scoreboard[:inning] = 0.5
    scoreboard[:away_outs] = 27
    scoreboard[:away_score] = 0
    scoreboard[:home_outs] = 27
    scoreboard[:home_score] = 0

    session[:scoreboard] = scoreboard
    session[:last_play] = '000'
  end
end
