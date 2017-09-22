class GamesController < ApplicationController
  def game
    session[:game_mode] = params[:mode]

    scoreboard = {}
    scoreboard[:inning] = 1.5
    scoreboard[:away_outs] = 27
    scoreboard[:away_score] = 0
    scoreboard[:home_outs] = 27
    scoreboard[:home_score] = 0

    session[:scoreboard] = scoreboard
    session[:last_play] = '000'
  end

  def play
    inning = session[:scoreboard]['inning']
    team_at_bat = BigDecimal.new(inning.to_s).frac == BigDecimal("0.5") ? 'away' : 'home'

    if params[:play] == 'out'

      # TODO: Handle Extra Innings
      return JSON.pretty_generate(last_play: session[:last_play], scoreboard: session[:scoreboard]) if inning > 9

      # Handle outs
      session[:scoreboard]["#{team_at_bat}_outs"] -= 1
      # Increase inning on third out
      session[:scoreboard]['inning'] += 0.5 if session[:scoreboard]["#{team_at_bat}_outs"] % 3 == 0
    else

      outcome = COMBINATIONS[session[:game_mode].to_sym][params[:play].to_sym][params[:runners_on].to_sym]


      # score tracking
      if outcome[:runs_scored] > 0
        if team_at_bat == 'away'
          session[:scoreboard]['away_score'] += outcome[:runs_scored]
        else
          session[:scoreboard]['home_score'] += outcome[:runs_scored]
        end
      end

      session[:last_play] = outcome
    end

    render json: {last_play: session[:last_play], scoreboard: session[:scoreboard], at_bat: team_at_bat}
  end
end
