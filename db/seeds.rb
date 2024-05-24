Booking.destroy_all
Politician.destroy_all
User.destroy_all

a = User.create!(name: "Bob USA! USA! USA!", email: "bobusa@gmail.com", password: "password")
b = User.create!(name: "Alice EU", email: "aliceeu@gmail.com", password: "password")
c = User.create!(name: "Frank Alejandro O'Reilly", email: "frankfromjapan@gmail.com", password: "password")
d = User.create!(name: "Angela Merkel", email: "angela@lewagon.com", password: "password")

users = [a, b, c, d]

image_urls = {
  alexander_the_great: {
    p: "https://i.pinimg.com/originals/5c/54/0d/5c540dbb2dd31898b0d0926dd3e20b05.jpg"
  },
  cleopatra: {
    p: "https://www.creativefabrica.com/wp-content/uploads/2022/10/06/Realistic-Portrait-Of-Cleopatra-40463853-1.png"
  },
  sexy_biden: {
    p: "https://upload.wikimedia.org/wikipedia/commons/6/68/Joe_Biden_presidential_portrait.jpg",
    one: "https://pbs.twimg.com/media/CaL8zrtUsAEJRvJ.jpg:large",
    two: "https://a.abcnews.com/images/Politics/ap_joe_biden_ice_cream_03_jc_141009_4x3_992.jpg"
  },
  confused_biden: {
    p: "https://mediaproxy.salon.com/width/1200/https://media.salon.com/2019/08/confused-biden.jpg"
  },
  napoleon_img: {
    p: "https://upload.wikimedia.org/wikipedia/commons/4/46/Ch%C3%A2teau_de_Chantilly%2C_Fran%C3%A7ois_G%C3%A9rard%2C_portrait_of_Napoleon_Bonaparte.JPG",
    one: "https://upload.wikimedia.org/wikipedia/commons/5/50/Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg",
    two: "https://i.guim.co.uk/img/media/9caf56fe19efbc2ebc0501abeb8da801868bc3f9/0_679_3972_2383/master/3972.jpg?width=1900&dpr=2&s=none"
  },
  voldemort: {
    p: "https://media.harrypotterfanzone.com/lord-voldemort-deathly-hallows-part-2-portrait.jpg"
  },
  angela_merkel: {
    p: "https://www.kreiszeitung.de/bilder/2021/12/08/91166227/27658995-altkanzlerin-angela-merkel-cdu-winkt-2XwmSj0Edw6b.jpg"
  },
  barack_obama: {
    p: "https://ygo-assets-entities-us.yougov.net/516e6836-d278-11ea-a709-979a0378f022.jpg?pw=7000"
  },
  dick_cheney: {
    p: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Richard_Cheney_2005_official_portrait.jpg/800px-Richard_Cheney_2005_official_portrait.jpg"
  },
  donald_trump: {
    p: "https://ygo-assets-entities-us.yougov.net/ddb8156b-fee8-11ed-9d53-6515ccbf4e2f.jpg?zcw=655&zch=655&zct=40&zcl=97&pw=7000"
  },
  xi_jinping: {
    p: "https://ygo-assets-entities-us.yougov.net/5e378ea6-2d0e-11e6-9570-cf1c514d3e57.jpg?pw=140"
  },
  shinzo_abe: {
    p: "https://ygo-assets-entities-us.yougov.net/15c478b9-3757-11e8-9e7e-d1937979c38e.jpg?zcw=220&zch=220&zct=0&zcl=0&pw=140"
  },
  jair_bolsonaro: {
    p: "https://ygo-assets-entities-us.yougov.net/d3855ca0-cd6a-11e8-a722-affcf7e3f830.jpg?pw=140"
  },
  mohammed_bin_salman: {
    p: "https://ygo-assets-entities-us.yougov.net/568a26d2-1fa5-11e9-b579-ad83f130f935.jpg?zcw=561&zch=561&zct=0&zcl=244&pw=140"
  },
  bernie_sanders: {
    p: "https://ygo-assets-entities-us.yougov.net/d37b9602-098d-11e7-bbcc-8b355fa30afe.jpg?pw=7000"
  }
}

descriptions = {
  cleopatra: "Cleopatra VII Philopator (born 69 BC) was an Egyptian queen who served as the last active ruler of the Ptolemaic Kingdom of Egypt from 51 BC until her death in 30 BC. A member of the Ptolemaic dynasty, she was known for her intelligence, political acumen, and alliances with Roman leaders Julius Caesar and Mark Antony. Cleopatra's reign was marked by her efforts to stabilize Egypt and protect its independence amidst the expanding Roman Empire. She is celebrated for her strategic and romantic liaisons with powerful Roman figures, her ambitious and charismatic personality, and her tragic end, which led to Egypt becoming a province of Rome. Cleopatra remains a cultural icon of ancient Egyptian history and mythology.",
  alexander_the_great: "Alexander III of Macedon (born July 20, 356 BC) was a Macedonian king who served as the ruler of the ancient Greek kingdom of Macedon from 336 BC until his death in 323 BC. A member of the Argead dynasty, he is commonly known as Alexander the Great and is celebrated as one of history's greatest military commanders. Alexander previously succeeded his father, King Philip II, and spent much of his reign conducting an unprecedented military campaign through Asia and northeast Africa, creating one of the largest empires of the ancient world by the age of thirty. His legacy includes the widespread dissemination of Greek culture and the establishment of numerous cities, the most famous being Alexandria in Egypt.",
  voldemort: "Tom Marvolo Riddle, commonly known as Lord Voldemort (born December 31, 1926), was a dark wizard who served as the leader of the Death Eaters from the 1970s until his death in 1998. A member of Slytherin House during his time at Hogwarts School of Witchcraft and Wizardry, he was the most feared Dark Lord in magical history. Voldemort previously worked at Borgin and Burkes, using his charm and knowledge to locate and obtain powerful magical artifacts, and as a Dark Arts practitioner, he sought to conquer the wizarding world and achieve immortality through dark magic and Horcruxes.",
  napoleon: "Napoleon Bonaparte (born August 15, 1769) was a French military leader and emperor who served as the ruler of France from 1799 to 1815. A member of the Bonaparte family, he rose to prominence during the French Revolution and its associated wars. Napoleon is best known for his role in the Napoleonic Wars, during which he established hegemony over much of continental Europe. He previously served as a general in the French army, gaining fame for his tactical brilliance and decisive victories. As Emperor of the French, he implemented wide-ranging reforms, including the Napoleonic Code, which influenced legal systems worldwide. Despite his initial successes, his empire eventually fell, and he was exiled first to Elba and then to Saint Helena, where he died in 1821. Napoleon's legacy remains significant in military history, law, and governance.",
  angela_merkel: "Angela Dorothea Merkel (born 17 July 1954) is a German retired politician and chemist who served as Chancellor of Germany from 2005 to 2021 and was the first woman to hold that office. She previously served as Leader of the Opposition from 2002 to 2005 and as Leader of the Christian Democratic Union from 2000 to 2018. During her chancellorship, Merkel was frequently referred to as the de facto leader of the European Union (EU) and the most powerful woman in the world. Beginning in 2016, she was often described as the leader of the free world.",
  barack_obama: "Barack Hussein Obama II (born August 4, 1961) is an American politician who served as the 44th president of the United States from 2009 to 2017. A member of the Democratic Party, he was the first African-American president in United States history. Obama previously served as a U.S. senator representing Illinois from 2005 to 2008, as an Illinois state senator from 1997 to 2004, and as a community service organizer, civil rights lawyer, and university lecturer.",
  dick_cheney: "Richard Bruce Cheney (born January 30, 1941) is an American retired politician and businessman who served as the 46th vice president of the United States from 2001 to 2009 under President George W. Bush. Often cited as the most powerful vice president in American history, Cheney previously served as White House Chief of Staff for President Gerald Ford, the U.S. representative for Wyoming's at-large congressional district from 1979 to 1989, and as the 17th United States secretary of defense in the administration of President George H. W. Bush. He is the oldest living former U.S. vice president, following the death of Walter Mondale in 2021.",
  donald_trump: "Donald John Trump (born June 14, 1946) is an American politician, media personality, and businessman who served as the 45th president of the United States from 2017 to 2021.",
  xi_jinping: "The son of Chinese Communist veteran Xi Zhongxun, Xi was exiled to rural Yanchuan County as a teenager following his father's purge during the Cultural Revolution. He lived in a yaodong in the village of Liangjiahe, Shaanxi province, where he joined the CCP after several failed attempts and worked as the local party secretary. After studying chemical engineering at Tsinghua University as a worker-peasant-soldier student, Xi rose through the ranks politically in China's coastal provinces. Xi was governor of Fujian from 1999 to 2002, before becoming governor and party secretary of neighboring Zhejiang from 2002 to 2007. Following the dismissal of the party secretary of Shanghai, Chen Liangyu, Xi was transferred to replace him for a brief period in 2007. He subsequently joined the Politburo Standing Committee (PSC) of the CCP the same year and was the first-ranking secretary of the Central Secretariat.",
  shinzo_abe: "Shinzo Abe (born September 21, 1954 – died July 8, 2022) was a Japanese politician and statesman who served as Prime Minister of Japan and President of the Liberal Democratic Party (LDP) from 2006 to 2007 and again from 2012 to 2020. He was the longest-serving prime minister in Japanese history, serving for almost nine years in total. Abe also served as Chief Cabinet Secretary from 2005 to 2006 under Junichiro Koizumi and was briefly the opposition leader in 2012.",
  jair_bolsonaro: "Jair Messias Bolsonaro (born March 21, 1955) is a Brazilian politician and retired military officer who served as the 38th president of Brazil from 2019 to 2023. He previously served as member of Brazil's Chamber of Deputies from 1991 to 2018.",
  mohammed_bin_salman: "Mohammed bin Salman Al Saud (born August 31, 1985) is the de facto ruler of Saudi Arabia. The heir apparent to the Saudi Arabian throne, he is currently Crown Prince and Prime Minister. He is the seventh son of King Salman of Saudi Arabia and grandson of the nation's founder, King Abdulaziz.",
  bernie_sanders: "Bernard Sanders (born September 8, 1941) is an American politician and activist who is the senior United States senator from Vermont. Sanders is the longest-serving independent in U.S. congressional history but has a close relationship with the Democratic Party, having caucused with House and Senate Democrats for most of his congressional career and sought the party's presidential nomination in 2016 and 2020, coming second in both campaigns. He is often seen as a leader of the U.S. progressive movement.",
  sexy_biden: "Sexy Biden is a fictional and playful representation of Joe Biden, emphasizing a charming and attractive persona. Known for his stylish appearance and charismatic presence, Sexy Biden is depicted as a confident leader with a sense of humor, often engaging in lighthearted and fun activities. This version of Biden enjoys connecting with people and is celebrated for his approachable and relatable demeanor.",
  confused_biden: "Confused Biden is a humorous and exaggerated portrayal of Joe Biden, focusing on moments of apparent confusion or forgetfulness. This caricature emphasizes the more human and imperfect side of a political figure, often depicted in scenarios where he is trying to make sense of complex situations. Confused Biden brings a sense of comic relief and relatability, highlighting the challenges and pressures of political life."
}

additional_values = {
  angela_merkel: {
    location: 'Germany',
    cost: 600,
    user_id: users.sample.id
  },
  barack_obama: {
    location: 'USA',
    cost: 100,
    user_id: users.sample.id
  },
  dick_cheney: {
    location: 'USA',
    cost: 1500,
    user_id: users.sample.id
  },
  donald_trump: {
    location: 'USA',
    cost: 600,
    user_id: users.sample.id
  },
  sexy_biden: {
    location: 'USA',
    cost: 800,
    user_id: users.sample.id
  },
  confused_biden: {
    location: 'USA',
    cost: 150,
    user_id: users.sample.id
  },
  xi_jinping: {
    location: 'China',
    cost: 700,
    user_id: users.sample.id
  },
  shinzo_abe: {
    location: 'Japan',
    cost: 1500,
    user_id: users.sample.id
  },
  jair_bolsonaro: {
    location: 'Brazil',
    cost: 77,
    user_id: users.sample.id
  },
  mohammed_bin_salman: {
    location: 'Saudi Arabia',
    cost: 160,
    user_id: users.sample.id
  },
  bernie_sanders: {
    location: 'USA',
    cost: 200,
    user_id: users.sample.id
  },
  alexander_the_great: {
    location: 'Macedon',
    cost: 800,
    user_id: users.sample.id
  },
  cleopatra: {
    location: 'Egypt',
    cost: 2500,
    user_id: users.sample.id
  },
  voldemort: {
    location: 'Hogwarts',
    cost: 5000,
    user_id: users.sample.id
  },
  napoleon: {
    location: 'France',
    cost: 3500,
    user_id: users.sample.id
  }
}

tags = ["sexy", "corrupt", "left", "center", "right"]

politicians_data = [
  { name: 'Barack Obama', tags: tags.sample, **additional_values[:barack_obama], description: descriptions[:barack_obama], image_url: image_urls[:barack_obama][:p] },
  { name: 'Angela Merkel', tags: tags.sample, **additional_values[:angela_merkel], description: descriptions[:angela_merkel], image_url: image_urls[:angela_merkel][:p] },
  { name: 'Cleopatra', tags: tags.sample, **additional_values[:cleopatra], description: descriptions[:cleopatra], image_url: image_urls[:cleopatra][:p] },
  { name: 'Donald Trump', tags: tags.sample, **additional_values[:donald_trump], description: descriptions[:donald_trump], image_url: image_urls[:donald_trump][:p] },
  { name: 'Sexy Biden', tags: tags.sample, **additional_values[:sexy_biden], description: descriptions[:sexy_biden], image_url: image_urls[:sexy_biden][:p] },
  { name: 'Confused Biden', tags: tags.sample, **additional_values[:confused_biden], description: descriptions[:confused_biden], image_url: image_urls[:confused_biden][:p] },
  { name: 'Xi Jinping', tags: tags.sample, **additional_values[:xi_jinping], description: descriptions[:xi_jinping], image_url: image_urls[:xi_jinping][:p] },
  { name: 'Napoleon', tags: tags.sample, **additional_values[:napoleon], description: descriptions[:napoleon], image_url: image_urls[:napoleon_img][:p] },
  { name: 'Shinzo Abe', tags: tags.sample, **additional_values[:shinzo_abe], description: descriptions[:shinzo_abe], image_url: image_urls[:shinzo_abe][:p] },
  { name: 'Dick Cheney', tags: tags.sample, **additional_values[:dick_cheney], description: descriptions[:dick_cheney], image_url: image_urls[:dick_cheney][:p] },
  { name: 'Voldemort', tags: tags.sample, **additional_values[:voldemort], description: descriptions[:voldemort], image_url: image_urls[:voldemort][:p] },
  { name: 'Jair Bolsonaro', tags: tags.sample, **additional_values[:jair_bolsonaro], description: descriptions[:jair_bolsonaro], image_url: image_urls[:jair_bolsonaro][:p] },
  { name: 'Mohammed bin Salman', tags: tags.sample, **additional_values[:mohammed_bin_salman], description: descriptions[:mohammed_bin_salman], image_url: image_urls[:mohammed_bin_salman][:p] },
  { name: 'Alexander the Great', tags: tags.sample, **additional_values[:alexander_the_great], description: descriptions[:alexander_the_great], image_url: image_urls[:alexander_the_great][:p] },
  { name: 'Bernie Sanders', tags: tags.sample, **additional_values[:bernie_sanders], description: descriptions[:bernie_sanders], image_url: image_urls[:bernie_sanders][:p] }
]

politicians = politicians_data.map { |politician_data| Politician.create!(politician_data) }

users.each do |user|
  3.times do
    start_date = Date.today + rand(1..30)
    end_date = start_date + rand(1..10)
    Booking.create!(politician_id: politicians.sample.id, user_id: user.id, status: 0, start_date: start_date, end_date: end_date)
  end
end

p "--- Database has:"
p "--- #{User.count} users"
p "--- #{Politician.count} politicians"
p "--- #{Booking.count} bookings"
p "--- seed done 🤗"
