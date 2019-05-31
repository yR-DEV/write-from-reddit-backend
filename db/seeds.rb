# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
writer1 = Writer.create({email: 'bob@bob.com', password: 'passw0rd'})
prompt1 = WritingPrompt.create({ fiction_prompt: 'Write something that satisfies your creative faculties' })
# prompt1 = WritingPrompt.create({ fiction_prompt: 'Write something that doesnt make you so sad' })
response1 = WritingResponse.create({ fiction_response: 'I tried to write something to make me feel better but I didnt', writer: writer1, writing_prompt: prompt1 })

require 'rest-client'
require 'json'

response = JSON.parse(RestClient.get("https://www.reddit.com/r/writingprompts.json"))

response["data"]["children"].map.with_index { |prompt, i|  WritingPrompt.create({ fiction_prompt: prompt["data"]["title"] }) }
