search = "Super"
games = ["Super Smash Bros", 'Super Mario Bros', "Zelda", "Supper soup"]
matched_games = games.grep(Regexp.new(search))
p matched_games