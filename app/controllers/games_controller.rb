class GamesController < ApplicationController
  def play_rock
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
      render("games/play_rock_rock.html.erb")
    elsif @computer_move == "paper"
      render("games/play_rock_paper.html.erb")
      @outcome = "lost"
    else
      @outcome = "won"
      render("games/play_rock_scissors.html.erb")
    end
  end

  def play_paper
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "paper"
      @outcome = "tied"
      render("games/play_paper_paper.html.erb")
    elsif @computer_move == "scissors"
      @outcome = "lost"
      render("games/play_paper_scissors.html.erb")
    else
      @outcome = "won"
      render("games/play_paper_rock.html.erb")
    end

  end

  def play_scissors
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "scissors"
      @outcome = "tied"
      render("games/play_scissors_scissors.html.erb")
    elsif @computer_move == "rock"
      @outcome = "lost"
      render("games/play_scissors_rock.html.erb")
    else
      @outcome = "won"
      render("games/play_scissors_paper.html.erb")
    end

  end
end
