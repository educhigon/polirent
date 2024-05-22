Booking.destroy_all
Politician.destroy_all
User.destroy_all

a = User.create!(email: "bobUSA@gmail.com", password: "password")
b = User.create(email: "aliceEU@gmail.com", password: "password")
c = User.create(email: "frankWORLD@gmail.com", password: "password")

d = User.create(email: "derekRIGHT@gmail.com", password: "password")
e = User.create(email: "enzoLEFT@gmail.com", password: "password")

p1 = Politician.create!( name: 'Barack Obama', location: "USA", cost: 100, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/516e6836-d278-11ea-a709-979a0378f022.jpg?pw=70", user_id: a.id )

file = URI.open("https://ygo-assets-entities-us.yougov.net/516e6836-d278-11ea-a709-979a0378f022.jpg")
p1.photo.attach(io:file, filename: "something something", content_type: "image/jpg")
p1.save

p2 = Politician.create!( name: 'George W. Bush', location: "USA", cost: 200, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/af46ff95-738d-11ea-affe-f9053ded7ac4.jpg?pw=70", user_id: a.id )
p3 = Politician.create!( name: 'Joe Biden', location: "USA", cost: 300, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/67a5222a-5c70-11eb-8d48-eb9b21d67bdc.jpg?pw=70", user_id: a.id )
p4 = Politician.create!( name: 'Hillary Clinton', location: "USA", cost: 400, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/8f2b363a-4413-11e6-90f5-85880927bf80.jpg?pw=70", user_id: a.id )
p5 = Politician.create!( name: 'Arnold Schwarzenegger', location: "USA", cost: 500, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/a58e390d-2d00-11e6-9dc6-455dca91e85a.jpg?pw=70", user_id: a.id )
p6 = Politician.create!( name: 'Donald Trump', location: "USA", cost: 600, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/ddb8156b-fee8-11ed-9d53-6515ccbf4e2f.jpg?zcw=655&zch=655&zct=40&zcl=97&pw=70", user_id: a.id )
p7 = Politician.create!( name: 'Bernie Sanders', location: "USA", cost: 700, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/d37b9602-098d-11e7-bbcc-8b355fa30afe.jpg?pw=70", user_id: a.id )
p8 = Politician.create!( name: 'Kamala Harris', location: "USA", cost: 800, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/8074de4c-5c6f-11eb-ba60-1dea87cb8f5c.jpg?pw=70", user_id: a.id )
p9 = Politician.create!( name: 'Jimmy Carter', location: "USA", cost: 900, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/af35e885-738d-11ea-affe-f9053ded7ac4.jpg?pw=70", user_id: a.id )
p10 = Politician.create!( name: 'Nancy Pelosi', location: "USA", cost: 1000, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/99d4b1a5-0781-11ea-923c-e3a824502dfc.jpg?zcw=773&zch=773&zct=0&zcl=0&pw=70", user_id: a.id )
p11 = Politician.create!( name: 'Bill Clinton', location: "USA", cost: 1100, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/a271d882-c63b-11e8-b786-f96307b120ad.jpg?zcw=629&zch=629&zct=0&zcl=264&pw=70", user_id: a.id )
p12 = Politician.create!( name: 'Robert F. Kennedy, Jr.', location: "USA", cost: 1200, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/63ce3711-84c0-11ee-8819-5bdc555e4eaf.jpg?pw=70", user_id: a.id )
p13 = Politician.create!( name: 'Sarah Palin', location: "USA", cost: 1300, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/ba67b401-2d0a-11e6-bce7-6ff134176666.jpg?pw=70", user_id: a.id )
p14 = Politician.create!( name: 'Mike Pence', location: "USA", cost: 1400, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/42348fa5-3ef5-11e7-bd17-7780b36eac03.jpg?pw=70", user_id: a.id )
p15 = Politician.create!( name: 'Dick Cheney', location: "USA", cost: 1500, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/1e08e514-2d03-11e6-9570-cf1c514d3e57.jpg?pw=70", user_id: a.id )
p16 = Politician.create!( name: 'Mitt Romney', location: "USA", cost: 1600, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/442ce5c4-2d08-11e6-a4bd-71dbf5f2854a.jpg?pw=70", user_id: a.id )
p17 = Politician.create!( name: 'Ted Cruz', location: "USA", cost: 1700, description: "something something", image_url:"https://ygo-assets-entities-us.yougov.net/eab6136d-2d0b-11e6-8fa2-87887d182df9.jpg?pw=70", user_id: a.id )
p21 = Politician.create!( name: 'Vladimir Putin', location: "Russia", cost: 100, description: "something something", image_url: "	https://ygo-assets-entities-us.yougov.net/cdac6230…5dca91e85a.jpg?zcw=218&zch=218&zct=6&zcl=28&pw=70", user_id: b.id )
p22 = Politician.create!( name: 'Justin Trudeau', location: "Canada", cost: 200, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/951c1caf-2d06-11e6-8fa2-87887d182df9.jpg?pw=70", user_id: b.id )
p23 = Politician.create!( name: 'Tony Blair', location: "UK", cost: 300, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/310c8ea7-2d0d-11e6-a4bd-71dbf5f2854a.jpg?pw=70", user_id: b.id )
p24 = Politician.create!( name: 'Volodymyr Zelenskyy', location: "Ukraine", cost: 400, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/f1c76dc2-9a2c-11ec-9686-0915ce2c2d35.jpg?zcw=259&zch=259&zct=0&zcl=114&pw=140", user_id: b.id )
p25 = Politician.create!( name: 'Boris Johnson', location: "UK", cost: 500, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/862f85a5-bfb1-11eb-a27f-f791d9338693.jpg?pw=140", user_id: b.id )
p26 = Politician.create!( name: 'Angela Merkel', location: "Germany", cost: 600, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/ef0b5614-b0b7-11e6-adde-09142178952f.jpg?pw=140", user_id: b.id )
p27 = Politician.create!( name: 'Xi Jinping', location: "Taiwan", cost: 700, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/5e378ea6-2d0e-11e6-9570-cf1c514d3e57.jpg?pw=140", user_id: c.id )
p28 = Politician.create!( name: 'Emmanuel Macron', location: "France", cost: 800, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/5e5f935c-d0c7-11e6-8d77-97af53817351.jpg?pw=140", user_id: b.id )
p29 = Politician.create!( name: 'David Cameron', location: "UK", cost: 900, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/9fbb0a31-c63d-11e8-8e97-49c7134d7a4e.jpg?zcw=942&zch=942&zct=32&zcl=1&pw=140", user_id: b.id )
p210 = Politician.create!( name: 'Mohammed bin Salman', location: "Saudi Arabia", cost: 1000, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/568a26d2-1fa5-11e9-b579-ad83f130f935.jpg?zcw=561&zch=561&zct=0&zcl=244&pw=140", user_id: c.id )
p211 = Politician.create!( name: 'Theresa May', location: "UK", cost: 1100, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/eda4fa12-4d1a-11e7-8dd6-1d2e5f5adde4.jpg?pw=140", user_id: b.id )
p212 = Politician.create!( name: 'Salman bin Abdulaziz Al Saud', location: "Saudi Arabia", cost: 1200, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/1ae39d1a-1fa5-11e9-aa2b-edabeda724d3.jpg?zcw=1807&zch=1807&zct=0&zcl=311&pw=140", user_id: c.id )
p213 = Politician.create!( name: 'Nicolás Maduro', location: "Venezuela", cost: 1300, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/1272c65d-1fa4-11e9-b579-ad83f130f935.jpg?zcw=405&zch=405&zct=2&zcl=156&pw=140", user_id: c.id )
p214 = Politician.create!( name: 'Recep Tayyip Erdoğan', location: "Turkey", cost: 1400, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/9eb16822-5304-11e6-b0b4-eb60285ecf02.jpg?pw=140", user_id: b.id )
p215 = Politician.create!( name: 'Shinzō Abe', location: "Japan", cost: 1500, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/15c478b9-3757-11e8-9e7e-d1937979c38e.jpg?zcw=220&zch=220&zct=0&zcl=0&pw=140", user_id: c.id )
p216 = Politician.create!( name: 'Narendra Modi', location: "India", cost: 1600, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/e697fd2c-c7ad-11e8-8d12-4b6fc186e574.jpg?zcw=450&zch=450&zct=0&zcl=0&pw=140", user_id: c.id )
p217 = Politician.create!( name: 'Jair Bolsonaro', location: "Brazil", cost: 1700, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/d3855ca0-cd6a-11e8-a722-affcf7e3f830.jpg?pw=140", user_id: c.id )
p218 = Politician.create!( name: 'Gordon Brown', location: "UK", cost: 1800, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/e6d8fff6-14c3-11e9-9e9a-63247b032ab8.jpg?zcw=387&zch=387&zct=0&zcl=117&pw=140", user_id: b.id )
p219 = Politician.create!( name: 'Enrique Peña Nieto', location: "Mexico", cost: 1900, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/43a131da-3757-11e8-a175-dfc2b12b020e.jpg?pw=140", user_id: c.id )
p219 = Politician.create!( name: 'Antonio Guterres', location: "World", cost: 1900, description: "something something", image_url: "https://ygo-assets-entities-us.yougov.net/d88cd25d-91e3-11e6-bce9-1b81e7850bd7.jpg?pw=140", user_id: c.id )

politicians = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p21, p22, p23, p24, p25, p26, p27, p28, p29, p210, p211, p212, p213, p214, p215, p216, p217, p218, p219, p219]

Booking.create!(politician_id: politicians.sample.id, user_id: d.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: d.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: d.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: d.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: e.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: e.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: e.id, status: 0)
Booking.create(politician_id:  politicians.sample.id, user_id: e.id, status: 0)

p "users: #{User.count}"
p "polis: #{Politician.count}"
p "bookings: #{Booking.count}"

p "seed done 😊"
