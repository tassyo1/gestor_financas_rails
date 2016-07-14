# needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   
Frequency.create(name:"eventual")
Frequency.create(name:"mensal")
Frequency.create(name:"bimestral")
Frequency.create(name:"trimestral")
Frequency.create(name:"semestral")
Frequency.create(name:"anual")

