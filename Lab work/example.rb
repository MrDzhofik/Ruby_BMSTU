# frozen_string_literal: true

# yohoho
# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://app.sportdataapi.com/api/v1/status?apikey=54785740-86e5-11ed-8889-b771038c58e3")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["X-RapidAPI-Key"] = '1b78abc55fmsh91ff5b0ba65415ap1a92ebjsn65c364bcad50'
# request["X-RapidAPI-Host"] = 'api-football-v1.p.rapidapi.com'

# response = http.request(request)
# puts response.read_body

require 'faker'

# teams_and_coach = []

# teams = []
# coaches = []
# players = []

# 1000.times do
#     teams.push(Faker::Sports::Football.team)
# end

# 1000.times do
#     coaches.push(Faker::Sports::Football.coach)
# end

# 1000.times do
#     players.push(Faker::Sports::Football.player)
# end

# 100.times do
#     club = {}
#     club[:team] = Faker::Sports::Football.team
#     club[:coach] = Faker::Sports::Football.coach
#     p club
#     teams_and_coach.push(club)
# end

# p teams.uniq!
# p teams[0...10]
# p teams[10...20]
# p coaches.uniq!
# p players.uniq!

# p teams[0...10].length
# p coaches.length
# p players.length


# p Faker::WorldCup.team

# countries = []
# 1000.times do
#     countries.push(Faker::WorldCup.team)
# end
# p countries.uniq!
# p countries.length


# p ([*1..10])
# a = (('Баум Фут Лиг').split())
# b = ''
# a.each do |word|
#     b += word[0]
# end
# p b

coaches = []
(1..1000).each do 
    coaches.push(Faker::WorldCup.roster)
end

p coaches.uniq!
p coaches.length

