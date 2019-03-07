require 'tty-table'

def leaderboard
  table = TTY::Table.new
  table << ['username', 'wins', 'losses', 'win/lose ratio']

  user_ranking.each do |user|
    username = user.username.capitalize
    wins = user.wins
    losses = user.losses
    ratio = user.win_ratio.round(2)
    table << [username, wins, losses, ratio]
  end

  puts table.render(:ascii)
end


def user_ranking
  User.all.sort_by{|user| user.win_ratio}.reverse
end
