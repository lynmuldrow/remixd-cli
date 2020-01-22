puts "Resetting database, one moment please..."
Artist.destroy_all
OGSong.destroy_all
Remix.destroy_all
puts "...database reset!"

puts "Creating Artists, one moment please..."
    kanye = Artist.create(name:"Kanye West")
    jay_z = Artist.create(name: "Jay-Z")
    drake = Artist.create(name: "Drake")
    dre = Artist.create(name: "Dr. Dre")
    weeknd = Artist.create(name: "The Weeknd")
    puffy = Artist.create(name: "Puff Daddy")
puts "...artists added!"

puts "Creating Original Songs, one moment please..."
    nina_simone = OGSong.create(og_artist: "Nina Simone", title: "Strange Fruit", og_year:"1965")
    james_brown = OGSong.create(og_artist: "James Brown", title: "My Thang", og_year:"1974")
    timmy_thomas = OGSong.create(og_artist: "Timmy Thomas", title: "Why Can't We Live Together", og_year:"1972")
    david_mccallum = OGSong.create(og_artist: "David McCallum", title: "The Edge", og_year:"1967")
    aaliyah = OGSong.create(og_artist: "Aaliyah", title: "Rock the Boat", og_year:"2001")
    bill_conti = OGSong.create(og_artist: "Bill Conti", title: "Going the Distance", og_year:"1976")
    ohio_players = OGSong.create(og_artist: "Ohio Players", title: "Little Lady Maria", og_year:"1976")
    hossan_ramzy = OGSong.create(og_artist: "Hossan Ramzy", title: "Khusara Khusara", og_year:"1994")
    marvin_gaye = OGSong.create(og_artist: "Marvin Gaye", title: "Distant Lover", og_year:"1973")
    lauryn_hill = OGSong.create(og_artist: "Lauryn Hill", title: "Ex-Factor", og_year:"1998")
    lil_wayne = OGSong.create(og_artist: "Lil' Wayne", title: "Lollipop", og_year:"2008")
    nwa = OGSong.create(og_artist: "N.W.A", title: "Compton's in the House", og_year:"1988")
    fugees = OGSong.create(og_artist: "The Fugees", title: "Fu-Gee-La", og_year:"1995")
    hank_crawford = OGSong.create(og_artist: "Hank Crawford", title: "Wildflower", og_year:"1973")
    j5 = OGSong.create(og_artist: "Jackson 5", title: "It's Great to Be Here", og_year:"1971")
puts "...songs added!"

puts "Creating Remixes, one moment please..."
    Remix.create(title: "Blood on the Leaves", ogsong_id: nina_simone.title, artist_id: kanye.name)
    Remix.create(title: "Gotta Have It", ogsong_id: james_brown.title, artist_id: jay_z.name)
    Remix.create(title: "Hotline Bling", ogsong_id: timmy_thomas.title, artist_id: drake.name)
    Remix.create(title: "The Next Episode", ogsong_id: david_mccallum.title, artist_id: dre.name)
    Remix.create(title: "What You Need", ogsong_id: aaliyah.title, artist_id: weeknd.name)
    Remix.create(title: "Victory", ogsong_id: bill_conti.title, artist_id: puffy.name)
    Remix.create(title: "Senorita", ogsong_id: ohio_players.title, artist_id: puffy.name)
    Remix.create(title: "Big Pimpin'", ogsong_id: hossan_ramzy.title, artist_id: jay_z.name)
    Remix.create(title: "Spaceship", ogsong_id: marvin_gaye.title, artist_id: kanye.name)
    Remix.create(title: "Nice for What", ogsong_id: lauryn_hill.title, artist_id: drake.name)
    Remix.create(title: "In My Feelings", ogsong_id: lil_wayne.title, artist_id: drake.name)
    Remix.create(title: "Forgot About Dre", ogsong_id: nwa.title, artist_id: dre.name)
    Remix.create(title: "Sidewalks", ogsong_id: fugees.title, artist_id: weeknd.name)
    Remix.create(title: "Drive Slow", ogsong_id: hank_crawford.title, artist_id: kanye.name)
    Remix.create(title: "It's All About the Benjamins", ogsong_id: j5.title, artist_id: puffy.name)
puts "...remixes added!"