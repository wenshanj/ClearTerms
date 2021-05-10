# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'

# create some companies
facebook         = FactoryBot.create(:company)
ebay             = FactoryBot.create(:company, name: "eBay", description: "eBay is an online marketplace that connects a global network of buyers and sellers.", url: "ebay.com", logo: "ebay.png", crunchbase_url: "https://www.crunchbase.com/organization/ebay?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
redfin           = FactoryBot.create(:company, name: "Redfin", description: "Redfin is a provider of real estate search and brokerage services through a combination of real estate web platforms accessible to agents.", url: "redfin.com", logo: "redfin.png", crunchbase_url: "https://www.crunchbase.com/organization/redfin?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv" )
sony             = FactoryBot.create(:company, name: "Sony", description: "Sony develops and manufactures audio, video, communications, and information technology products for the consumer and professional markets.", url: "sony.net", logo: "sony.png", crunchbase_url: "https://www.crunchbase.com/organization/sony?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
adobe            = FactoryBot.create(:company, name: "Adobe", description: "Adobe is a software company that provides its users with digital marketing and media solutions.", url: "adobe.com", logo: "adobe.png", crunchbase_url: "https://www.crunchbase.com/organization/adobe-systems?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
grubhub          = FactoryBot.create(:company, name: "Grubhub", description: "Grubhub is a online and mobile food ordering and delivery marketplace dedicated to connecting diners with local restaurants.", url: "grubhub.com", logo: "grubhub.png", crunchbase_url: "https://www.crunchbase.com/organization/grubhub?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
apple            = FactoryBot.create(:company, name: "Apple", description: "Apple is a multinational corporation that designs, manufactures, and markets consumer electronics, personal computers, and software.", url: "apple.com", logo: "apple.png", crunchbase_url: "https://www.crunchbase.com/organization/apple?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
esty             = FactoryBot.create(:company, name: "Esty", description: "Etsy is an e-commerce site and a smartphone application for buying and selling handmade and vintage items.", url: "esty.com", logo: "esty.png", crunchbase_url: "https://www.crunchbase.com/organization/etsy?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
netflix          = FactoryBot.create(:company, name: "Netflix", description: "Netflix is an online platform that enables users to watch TV shows and movies.", url: "netflix.com", logo: "netflix.png", crunchbase_url: "https://www.crunchbase.com/organization/netflix?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
jcrew            = FactoryBot.create(:company, name: "J.Crew", description: "J. Crew is a clothing retailer with outlet stores, and an online and catalog business.", url: "jcrew.com", logo: "jcrew.png", crunchbase_url: "https://www.crunchbase.com/organization/j-crew?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
wayfair          = FactoryBot.create(:company, name: "Wayfair", description: "Wayfair is an online retailer of home products for bedroom, living room, kitchen and dining, home entertainment, bathroom, and more.", url: "wayfair.com", logo: "wayfair.png", crunchbase_url: "https://www.crunchbase.com/organization/wayfair?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
spotify          = FactoryBot.create(:company, name: "Spotify", description: "Spotify is a commercial music streaming service that provides restricted digital content from a range of record labels and artists.", url: "spotify.com", logo: "spotify.png", crunchbase_url: "https://www.crunchbase.com/organization/spotify?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
nike             = FactoryBot.create(:company, name: "Nike", description: "Nike designs, develops, and markets footwear, apparel, equipment, and accessory products.", url: "nike.com", logo: "nike.png", crunchbase_url: "https://www.crunchbase.com/organization/nike?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
away             = FactoryBot.create(:company, name: "Away", description: "Away is a modern travel and lifestyle brand designed with thoughtful features that solve real travel problems", url: "awaytravel.com", logo: "away.png", crunchbase_url: "https://www.crunchbase.com/organization/away-2?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
guitar_center    = FactoryBot.create(:company, name: "Guitar Center", description: "Guitar Center, Inc. operates a chain of guitar and amplifier stores.", url: "guitarcenter.com", logo: "guitar-center.png", crunchbase_url: "https://www.crunchbase.com/organization/guitar-center?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
adidas           = FactoryBot.create(:company, name: "Adidas", description: "Adidas is a global sports brand that manufactures apparel, accessories, and footwear for professional athletes involved in various sports.", url: "adidas.com", logo: "adidas.png", crunchbase_url: "https://www.crunchbase.com/organization/adidas?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
nordstrom        = FactoryBot.create(:company, name: "Nordstrom", description: "Nordstrom is an online fashion retailer offering apparel, shoes, cosmetics and accessories for women, men and children.", url: "nordstrom.com", logo: "nordstrom.png", crunchbase_url: "https://www.crunchbase.com/organization/nordstrom?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
farfetch         = FactoryBot.create(:company, name: "Farfetch", description: "Farfetch is an online luxury fashion retail platform.", url: "farfetch.com", logo: "farfetch.png", crunchbase_url: "https://www.crunchbase.com/organization/farfetch?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
urban_outfitters = FactoryBot.create(:company, name: "Urban Outfitters", description: "Urban Outfitters is a global retailer with a boutique approach.", url: "https://www.urbanoutfitters.com", logo: "uo.png", crunchbase_url: "https://www.crunchbase.com/organization/urban-outfitters?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
sephora          = FactoryBot.create(:company, name: "Sephora", description: "Sephora is an online shopping site that offers a range of beauty products such as cosmetics and skincare items.", url: "sephora.com", logo: "sephora.png", crunchbase_url: "https://www.crunchbase.com/organization/sephora?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
lululemon        = FactoryBot.create(:company, name: "Lululemon", description: "Lululemon is a technical athletic apparel company for yoga, running, training, and other sweaty pursuits.", url: "https://shop.lululemon.com", logo: "lululemon.png", crunchbase_url: "https://www.crunchbase.com/organization/lululemon?utm_source=crunchbase&utm_medium=export&utm_campaign=odm_csv")
uniqlo           = FactoryBot.create(:company, name: "UNIQLO", description: "UNIQLO Co is an online store that sells women’s, men’s, and kids’ clothing and accessories.", url: "uniqlo.com", logo: "uniqlo.png", crunchbase_url: "https://www.crunchbase.com/organization/uniqlo-co")