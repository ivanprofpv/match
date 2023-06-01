# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team1 = Team.create!(name: 'Команда1')
team2 = Team.create!(name: 'Команда2')

player_team1_1 = Player.create!(name: 'игрок1', team: team1)
player_team1_2 = Player.create!(name: 'игрок2', team: team1)
player_team1_3 = Player.create!(name: 'игрок3', team: team1)

player_team2_1 = Player.create!(name: 'игрок1', team: team2)
player_team2_2 = Player.create!(name: 'игрок2', team: team2)
player_team2_3 = Player.create!(name: 'игрок3', team: team2)

achivment1 = Achivment.create!(name: 'Пробежал 100 метров за 10 секунд')
achivment2 = Achivment.create!(name: 'Пробежал 200 метров за 20 секунд')

game1 = Game.create!(name: 'Матч1', team: team1)
game2 = Game.create!(name: 'Матч2', team: team2)
game3 = Game.create!(name: 'Матч3', team: team1)

player_statistics1 = PlayerStatistic.create!(player: player_team1_1, game: game1, achivment: achivment1, team: team1)
player_statistics2 = PlayerStatistic.create!(player: player_team1_3, game: game1, achivment: achivment1, team: team1)
player_statistics3 = PlayerStatistic.create!(player: player_team1_3, game: game2, achivment: achivment2, team: team1)
player_statistics4 = PlayerStatistic.create!(player: player_team2_1, game: game1, achivment: achivment2, team: team2)
player_statistics1 = PlayerStatistic.create!(player: player_team2_3, game: game2, achivment: achivment1, team: team2)
player_statistics1 = PlayerStatistic.create!(player: player_team2_2, game: game3, achivment: achivment2, team: team2)