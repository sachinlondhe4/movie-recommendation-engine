# encoding: utf-8
# Builds recommendations based on movies playing in a specified zip code

class Recommendations

  attr_reader :title, :link, :showtimes, :ranking, :zip_code, :movie

  def initialize(request_number, zip=nil)

    @zip_code       = zip
    @request_number = request_number

    if @zip_code

      # stubbed out for layout work
      # @data  = Fandango.movies_near(@zip_code)
      @data = [{:theater=>{:name=>"Regal Gallery Place Stadium 14", :id=>"aatar", :address=>"701 Seventh Street NW Washington, DC 20001", :postal_code=>"20001"}, :movies=>[{:title=>"Abraham Lincoln: Vampire Hunter", :id=>"141897"}, {:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"AMC Loews Georgetown 14", :id=>"aaqpv", :address=>"3111 K Street N.W. Washington, DC 20007", :postal_code=>"20007"}, :movies=>[{:title=>"Abraham Lincoln: Vampire Hunter", :id=>"141897"}, {:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Amazing Spider-Man: An IMAX 3D Experience", :id=>"153829"}, {:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"Bully", :id=>"145958"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"Diary of a Wimpy Kid: Dog Days", :id=>"149911"}, {:title=>"Fixing the Future", :id=>"144047"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"The Intouchables", :id=>"152913"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"Ted", :id=>"136691"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Watch", :id=>"149910"}]}, {:theater=>{:name=>"AMC Loews Uptown 1", :id=>"aabyf", :address=>"3426 Connecticut Avenue N.W. Washington, DC 20008", :postal_code=>"20008"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Dark Knight Rises", :id=>"135740"}]}, {:theater=>{:name=>"AMC Courthouse Plaza 8", :id=>"aadak", :address=>"2150 Clarendon Blvd. Arlington, VA 22201", :postal_code=>"22201"}, :movies=>[{:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Madagascar 3: Europe's Most Wanted 3D", :id=>"151457"}, {:title=>"Rock of Ages", :id=>"147177"}, {:title=>"Safety Not Guaranteed", :id=>"153165"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Seeking a Friend for the End of the World", :id=>"150672"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Watch", :id=>"149910"}]}, {:theater=>{:name=>"AMC Loews Shirlington 7", :id=>"aabxo", :address=>"2772 South Randolph St. Arlington, VA 22206", :postal_code=>"22206"}, :movies=>[{:title=>"Beasts of the Southern Wild", :id=>"153166"}, {:title=>"The Best Exotic Marigold Hotel", :id=>"147777"}, {:title=>"The Intouchables", :id=>"152913"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"Safety Not Guaranteed", :id=>"153165"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Your Sister's Sister", :id=>"147903"}]}, {:theater=>{:name=>"Regal Ballston Common Stadium 12", :id=>"aanhf", :address=>"671 N. Glebe Road Arlington, VA 22203", :postal_code=>"22203"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"DCI 2012:  Big, Loud & Live 9", :id=>"155976"}, {:title=>"Der Rosenkavalier Met Summer Encore", :id=>"154548"}, {:title=>"The Grateful Dead Birthday Celebration", :id=>"156864"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Lucia Di Lammermoor Met Summer Encore", :id=>"154547"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"People Like Us", :id=>"152821"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Rifftrax Live: “Manos” The Hands of Fate", :id=>"154998"}, {:title=>"Snow White and the Huntsman", :id=>"141533"}, {:title=>"Star Trek: The Next Generation 25th Anniversary Event", :id=>"155848"}, {:title=>"Ted", :id=>"136691"}, {:title=>"The Who - Quadrophenia: The Complete Story", :id=>"156139"}]}, {:theater=>{:name=>"Freer Gallery of Art & Arthur M. Sackler Gallery", :id=>"aatgf", :address=>"1050 Independence Ave. SW Washington, DC 20560", :postal_code=>"20560"}, :movies=>[]}, {:theater=>{:name=>"Smithsonian National Museum of African Art", :id=>"aatgg", :address=>"950 Independence Ave. SW Washington, DC 20560", :postal_code=>"20560"}, :movies=>[]}, {:theater=>{:name=>"Einstein Planetarium", :id=>"aaulg", :address=>"6th Street & Independence Ave SW Washington, DC 20560", :postal_code=>"20560"}, :movies=>[{:title=>"Dynamic Earth Dome", :id=>"154459"}, {:title=>"Journey to the Stars", :id=>"127146"}, {:title=>"One World One Sky: Big Bird's Adventure", :id=>"127149"}, {:title=>"The Stars Tonight", :id=>"104551"}, {:title=>"Undiscovered Worlds: The Search Beyond Our Sun", :id=>"154440"}]}, {:theater=>{:name=>"Lockheed Martin IMAX - National Air & Space Museum", :id=>"aanly", :address=>"6th & Independence Ave SW Washington, DC 20560", :postal_code=>"20560"}, :movies=>[{:title=>"Air Racers 3D", :id=>"153633"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"Hubble 3D", :id=>"130017"}, {:title=>"Rescue 3D", :id=>"145651"}, {:title=>"To Fly!", :id=>"77167"}]}, {:theater=>{:name=>"Johnson IMAX - National Museum of Natural History", :id=>"aahgw", :address=>"10th & Constitution Ave, NW Washington, DC 20560", :postal_code=>"20560"}, :movies=>[{:title=>"Coral Reef Adventure", :id=>"59505"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"Dinosaurs 3D: Giants of Patagonia", :id=>"101950"}, {:title=>"Flying Monsters 3D", :id=>"144704"}, {:title=>"To the Arctic 3D", :id=>"152175"}]}, {:theater=>{:name=>"Smithsonian National Museum of the American Indian", :id=>"aatfy", :address=>"4th Street and Independence Washington, DC 20560", :postal_code=>"20560"}, :movies=>[]}, {:theater=>{:name=>"Mary Pickford Theatre", :id=>"aaswr", :address=>"101 Independence Ave. SE Washington D.C., DC 20540", :postal_code=>"20540"}, :movies=>[]}, {:theater=>{:name=>"Warner Bros. Theater", :id=>"aawow", :address=>"14th St and Constitution Avenue N.W. Washington, DC 20013", :postal_code=>"20013"}, :movies=>[{:title=>"The Broadway Melody", :id=>"21578"}, {:title=>"Don Juan", :id=>"39525"}, {:title=>"The Jazz Singer", :id=>"39030"}]}, {:theater=>{:name=>"Landmark's E-Street Cinema", :id=>"aaref", :address=>"555 11th Street NW Washington, DC 20004", :postal_code=>"20004"}, :movies=>[{:title=>"5 Broken Cameras", :id=>"154085"}, {:title=>"Anchors Aweigh", :id=>"92231"}, {:title=>"Beasts of the Southern Wild", :id=>"153166"}, {:title=>"Casablanca", :id=>"1415"}, {:title=>"Fight Club", :id=>"99773"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"The Rocky Horror Picture Show", :id=>"146"}, {:title=>"The Room", :id=>"70689"}, {:title=>"Safety Not Guaranteed", :id=>"153165"}, {:title=>"Shallow Grave", :id=>"38801"}, {:title=>"Shut Up and Play the Hits", :id=>"151722"}, {:title=>"A Streetcar Named Desire", :id=>"132917"}, {:title=>"Take This Waltz", :id=>"149089"}, {:title=>"To Have and Have Not", :id=>"20902"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Vertigo", :id=>"1951"}, {:title=>"The Warriors", :id=>"120818"}]}, {:theater=>{:name=>"Shakespeare Theatre Company", :id=>"aawez", :address=>"516 8th St. SE Washington, DC 20003", :postal_code=>"20003"}, :movies=>[]}, {:theater=>{:name=>"Phoenix Theatres Union Station", :id=>"aacyk", :address=>"50 Massachusetts Ave NE Washington, DC 20002", :postal_code=>"20002"}, :movies=>[]}, {:theater=>{:name=>"Aaron & Cecile Goldman Theater", :id=>"aavbj", :address=>"1529 16th St., NW Washington, DC 20036", :postal_code=>"20036"}, :movies=>[]}, {:theater=>{:name=>"West End Cinema", :id=>"aawgs", :address=>"2301 M Street, NW Washington, DC 20037", :postal_code=>"20037"}, :movies=>[{:title=>"Ballplayer: Pelotero", :id=>"152770"}, {:title=>"Bernie", :id=>"149564"}, {:title=>"The Best Exotic Marigold Hotel", :id=>"147777"}, {:title=>"A Cat in Paris", :id=>"142709"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Peter Grimes: La Scala Live", :id=>"154251"}]}, {:theater=>{:name=>"Lincoln Theatre", :id=>"aawon", :address=>"1215 U St, NW Washington, DC 20009", :postal_code=>"20009"}, :movies=>[]}, {:theater=>{:name=>"Regal Potomac Yard Stadium 16", :id=>"aajnc", :address=>"3575 Jefferson Davis Hwy. Alexandria, VA 22305", :postal_code=>"22305"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"DCI 2012:  Big, Loud & Live 9", :id=>"155976"}, {:title=>"Der Rosenkavalier Met Summer Encore", :id=>"154548"}, {:title=>"The Grateful Dead Birthday Celebration", :id=>"156864"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Lucia Di Lammermoor Met Summer Encore", :id=>"154547"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Rifftrax Live: “Manos” The Hands of Fate", :id=>"154998"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Star Trek: The Next Generation 25th Anniversary Event", :id=>"155848"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Who - Quadrophenia: The Complete Story", :id=>"156139"}]}, {:theater=>{:name=>"Arlington Cinema 'N' Drafthouse", :id=>"aadyb", :address=>"2903 Columbia Pike Arlington, VA 22204", :postal_code=>"22204"}, :movies=>[{:title=>"Battleship", :id=>"130096"}, {:title=>"The Cabin in the Woods", :id=>"118487"}, {:title=>"Chimpanzee", :id=>"116882"}, {:title=>"Dark Shadows", :id=>"147176"}, {:title=>"The Dictator", :id=>"145763"}, {:title=>"Dr. Seuss' The Lorax", :id=>"51897"}, {:title=>"The Hunger Games", :id=>"136944"}, {:title=>"What to Expect When You're Expecting", :id=>"120322"}]}, {:theater=>{:name=>"Marlow 6 Theatre", :id=>"aavhw", :address=>"3899 Branch Ave. Temple Hills, MD 20748", :postal_code=>"20748"}, :movies=>[{:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"Rivertowne 12", :id=>"aawfl", :address=>"6075 Oxon Hill Rd Oxon Hill, MD 20745", :postal_code=>"20745"}, :movies=>[{:title=>"Abraham Lincoln: Vampire Hunter", :id=>"141897"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Men in Black III", :id=>"135737"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"AMC Hoffman Center 22", :id=>"aapnj", :address=>"206 Swamp Fox Rd. Alexandria, VA 22314", :postal_code=>"22314"}, :movies=>[{:title=>"Abraham Lincoln", :id=>"99215"}, {:title=>"Abraham Lincoln: Vampire Hunter 3D", :id=>"152010"}, {:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Amazing Spider-Man: An IMAX 3D Experience", :id=>"153829"}, {:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"DCI 2012:  Big, Loud & Live 9", :id=>"155976"}, {:title=>"Der Rosenkavalier Met Summer Encore", :id=>"154548"}, {:title=>"Diary of a Wimpy Kid: Dog Days", :id=>"149911"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Lucia Di Lammermoor Met Summer Encore", :id=>"154547"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Madagascar 3: Europe's Most Wanted 3D", :id=>"151457"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Marvel's The Avengers 3D", :id=>"151545"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"People Like Us", :id=>"152821"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Rifftrax Live: “Manos” The Hands of Fate", :id=>"154998"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Snow White and the Huntsman", :id=>"141533"}, {:title=>"Star Trek: The Next Generation 25th Anniversary Event", :id=>"155848"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"Ted", :id=>"136691"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Watch", :id=>"149910"}, {:title=>"The Who - Quadrophenia: The Complete Story", :id=>"156139"}]}, {:theater=>{:name=>"AMC Mazza Gallerie", :id=>"aabye", :address=>"5300 Wisconsin Ave. NW Washington, DC 20015", :postal_code=>"20015"}, :movies=>[{:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Der Rosenkavalier Met Summer Encore", :id=>"154548"}, {:title=>"Diary of a Wimpy Kid: Dog Days", :id=>"149911"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Lucia Di Lammermoor Met Summer Encore", :id=>"154547"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"The Watch", :id=>"149910"}]}, {:theater=>{:name=>"The Avalon Theatre", :id=>"aabxu", :address=>"5612 Connecticut Ave. NW Washington, DC 20015", :postal_code=>"20015"}, :movies=>[{:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"The Fairy", :id=>"151950"}, {:title=>"Monsieur Lazhar", :id=>"147934"}, {:title=>"Take This Waltz", :id=>"149089"}]}, {:theater=>{:name=>"Regal Hyattsville Royale 14", :id=>"aaund", :address=>"6505 America Blvd Hyattsville, MD 20782", :postal_code=>"20782"}, :movies=>[{:title=>"Abraham Lincoln: Vampire Hunter 3D", :id=>"152010"}, {:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"Regal Majestic Stadium 20 & IMAX", :id=>"aaron", :address=>"900 Ellsworth Drive Silver Spring, MD 20910", :postal_code=>"20910"}, :movies=>[{:title=>"Abraham Lincoln: Vampire Hunter", :id=>"141897"}, {:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Amazing Spider-Man: An IMAX 3D Experience", :id=>"153829"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Madagascar 3: Europe's Most Wanted 3D", :id=>"151457"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Men in Black III", :id=>"135737"}, {:title=>"People Like Us", :id=>"152821"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Snow White and the Huntsman", :id=>"141533"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"Regal Bethesda 10", :id=>"aadxy", :address=>"7272 Wisconsin Ave. Bethesda, MD 20814", :postal_code=>"20814"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Ted", :id=>"136691"}]}, {:theater=>{:name=>"AFI Silver Theatre Cultural Center", :id=>"aarsm", :address=>"8633 Colesville Rd Silver Spring, MD 20910", :postal_code=>"20910"}, :movies=>[{:title=>"The Best Exotic Marigold Hotel", :id=>"147777"}, {:title=>"China Seas", :id=>"94563"}, {:title=>"Chitty Chitty Bang Bang", :id=>"3074"}, {:title=>"Commando", :id=>"117416"}, {:title=>"Dinner at Eight", :id=>"104287"}, {:title=>"Elling", :id=>"47256"}, {:title=>"First Blood", :id=>"150062"}, {:title=>"The Ipcress File", :id=>"42445"}, {:title=>"The Killing", :id=>"19031"}, {:title=>"La Traviata", :id=>"56303"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"Night Train to Munich", :id=>"95265"}, {:title=>"Red Headed Woman", :id=>"30824"}, {:title=>"Secret Agent", :id=>"84079"}, {:title=>"Shut Up and Play the Hits", :id=>"151722"}, {:title=>"The Sleeping Beauty (2011)", :id=>"145132"}, {:title=>"West Side Story", :id=>"6590"}]}, {:theater=>{:name=>"BETHESDA Row Cinema", :id=>"aaqjm", :address=>"7235 Woodmont Ave Bethesda, MD 20814", :postal_code=>"20814"}, :movies=>[{:title=>"Beasts of the Southern Wild", :id=>"153166"}, {:title=>"The Best Exotic Marigold Hotel", :id=>"147777"}, {:title=>"The Intouchables", :id=>"152913"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"Safety Not Guaranteed", :id=>"153165"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Your Sister's Sister", :id=>"147903"}]}, {:theater=>{:name=>"National Archives", :id=>"aantr", :address=>"8601 Adelphi Rd. College Park, MD 20740", :postal_code=>"20740"}, :movies=>[]}, {:theater=>{:name=>"Hoff Theatre", :id=>"aahgt", :address=>"University of Maryland - Student Union College Park, MD 20742", :postal_code=>"20742"}, :movies=>[]}, {:theater=>{:name=>"Loehmann's Twin Cinema", :id=>"aatgj", :address=>"7291 Arlington Blvd. Falls Church, VA 22042", :postal_code=>"22042"}, :movies=>[]}, {:theater=>{:name=>"Regal Kingstowne Stadium 16", :id=>"aatuq", :address=>"5910 Kingstowne Towne Center Alexandria, VA 22315", :postal_code=>"22315"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"Regal's Dark Knight Marathon", :id=>"156401"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"Mt. Vernon Multiplex", :id=>"aackm", :address=>"7940 Richmond Hwy Alexandria, VA 22306", :postal_code=>"22306"}, :movies=>[]}, {:theater=>{:name=>"Academy 8", :id=>"aacyp", :address=>"6198 Greenbelt Rd Greenbelt, MD 20770", :postal_code=>"20770"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}]}, {:theater=>{:name=>"AMC Tysons Corner 16", :id=>"aatso", :address=>"7850 Tysons Corner Center McLean, VA 22102", :postal_code=>"22102"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Amazing Spider-Man: An IMAX 3D Experience", :id=>"153829"}, {:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"DCI 2012:  Big, Loud & Live 9", :id=>"155976"}, {:title=>"Der Rosenkavalier Met Summer Encore", :id=>"154548"}, {:title=>"Diary of a Wimpy Kid: Dog Days", :id=>"149911"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Lucia Di Lammermoor Met Summer Encore", :id=>"154547"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Madagascar 3: Europe's Most Wanted 3D", :id=>"151457"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Marvel's The Avengers", :id=>"30154"}, {:title=>"Marvel's The Avengers 3D", :id=>"151545"}, {:title=>"Men in Black III", :id=>"135737"}, {:title=>"Men in Black III 3D", :id=>"147264"}, {:title=>"People Like Us", :id=>"152821"}, {:title=>"Prometheus", :id=>"141625"}, {:title=>"Rifftrax Live: “Manos” The Hands of Fate", :id=>"154998"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Star Trek: The Next Generation 25th Anniversary Event", :id=>"155848"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Watch", :id=>"149910"}, {:title=>"The Who - Quadrophenia: The Complete Story", :id=>"156139"}]}, {:theater=>{:name=>"Montgomery Royal Theatres", :id=>"aavux", :address=>"11160 Viers Mills Road Wheaton, MD 20902", :postal_code=>"20902"}, :movies=>[]}, {:theater=>{:name=>"P and G Old Greenbelt", :id=>"aaduj", :address=>"129 Center Way Greenbelt, MD 20770", :postal_code=>"20770"}, :movies=>[{:title=>"To Rome With Love", :id=>"153157"}]}, {:theater=>{:name=>"The Movies at Montgomery Mall", :id=>"aavwa", :address=>"7101 Democracy Blvd. Bethesda, MD 20817", :postal_code=>"20817"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}]}, {:theater=>{:name=>"AMC Loews White Flint 5", :id=>"aabxj", :address=>"11301 Rockville Pike Rockville, MD 20895", :postal_code=>"20895"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Ice Age: Continental Drift 3D", :id=>"152982"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Ted", :id=>"136691"}, {:title=>"The Watch", :id=>"149910"}]}, {:theater=>{:name=>"AMC Loews Center Park 8", :id=>"aabox", :address=>"4001 Powder Mill Rd. Beltsville, MD 20705", :postal_code=>"20705"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"Diary of a Wimpy Kid: Dog Days", :id=>"149911"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Watch", :id=>"149910"}]}, {:theater=>{:name=>"AMC Magic Johnson Capital Center 12", :id=>"aaswp", :address=>"800 Shoppers Way Largo, MD 20774", :postal_code=>"20774"}, :movies=>[{:title=>"The Amazing Spider-Man 3D", :id=>"141122"}, {:title=>"The Amazing Spider-Man", :id=>"126975"}, {:title=>"The Amazing Spider-Man: An IMAX 3D Experience", :id=>"153829"}, {:title=>"AMC's The Dark Knight Trilogy", :id=>"156399"}, {:title=>"The Bourne Legacy", :id=>"147179"}, {:title=>"Brave", :id=>"136016"}, {:title=>"Brave 3D", :id=>"148235"}, {:title=>"The Dark Knight Rises", :id=>"135740"}, {:title=>"The Dark Knight Rises: The IMAX Experience", :id=>"148958"}, {:title=>"Diary of a Wimpy Kid: Dog Days", :id=>"149911"}, {:title=>"Ice Age: Continental Drift", :id=>"135745"}, {:title=>"Katy Perry: Part of Me", :id=>"154343"}, {:title=>"Katy Perry: Part of Me 3D", :id=>"156067"}, {:title=>"Madagascar 3: Europe's Most Wanted", :id=>"125442"}, {:title=>"Madagascar 3: Europe's Most Wanted 3D", :id=>"151457"}, {:title=>"Magic Mike", :id=>"147736"}, {:title=>"Savages", :id=>"147181"}, {:title=>"Step Up Revolution", :id=>"148541"}, {:title=>"Ted", :id=>"136691"}, {:title=>"Tyler Perry's Madea's Witness Protection", :id=>"154970"}, {:title=>"The Watch", :id=>"149910"}]}, {:theater=>{:name=>"Cinema Arts Theatre", :id=>"aanrs", :address=>"9650 Main St Fairfax, VA 22031", :postal_code=>"22031"}, :movies=>[{:title=>"Beasts of the Southern Wild", :id=>"153166"}, {:title=>"The Best Exotic Marigold Hotel", :id=>"147777"}, {:title=>"The Intouchables", :id=>"152913"}, {:title=>"Moonrise Kingdom", :id=>"147737"}, {:title=>"People Like Us", :id=>"152821"}, {:title=>"To Rome With Love", :id=>"153157"}, {:title=>"Your Sister's Sister", :id=>"147903"}]}]

      # select movies from the db playing in specified zip      
      movies = Movie.released.select {|movie| @data.to_s.include? movie[:title]}  
    else

      movies = Movie.released.min_score.default

    end
    
    # check if request is for a specific id, oppose to general ranking request
    if @request_number[0..1] == 'id'

      # specific titles use a request format of 'id321' where 321 is the db id
      @movie = Movie.find( @request_number[2..-1] )
      
      # check if requested movie is equal to first recommendation.
      if @movie == movies[0]
        # adjust ranking to skip first recommendation
        @ranking = 1
      else
        @ranking = 0
      end

    else

      @ranking = @request_number = @request_number.to_i
      @movie   = movies[@request_number - 1]
      
      # reset ranking if this is the last movie on the list
      @ranking = 0 if @request_number == movies.size

    end
  end

  def title
    @movie.title
  end

  def showtimes(theater)

    # lowercased space free version of the theatre name with special id
    theater_identity = theater[:name].gsub(/\W/,'').downcase + '_' + theater[:id]

    theater_url  = "http://www.fandango.com/#{theater_identity}/theaterpage"
    theater_page = Nokogiri::HTML(open(theater_url))

    # the page has showtimes for every movie.  find ones that match our title
    matching_title = theater_page.css('#showtimes ul.showtimes').select do |movie|
      movie.at_css('h4 a').text.include?(title)
    end

    # showtimes_array = {}
    showtimes_array = []

    matching_title.each do |showtimes|

      # find showtimes for past shows and non ticketable shows
      showtimes.css('.times li.past','.times li.timeNonWired').each do |time|
        # showtimes_array[time.text]=''
        showtime_time = time.text
        showtime_url = ''
        showtimes_array << { time: showtime_time, url: showtime_url }
      end

      # find showtimes & url for ticketable shows
      showtimes.css('.times a.showtime_itr').each do |time|
        # showtimes_array[time.at_css('.showtime_pop').text]=time[:href]
        showtime_time = time.at_css('.showtime_pop').text
        showtime_url = time[:href]
        showtimes_array << { time: showtime_time, url: showtime_url }
      end

    end

    # make sure showtimes are in chronological order
    return showtimes_array.sort_by do | showtime |

      time = Time.parse(showtime[:time].gsub(/a/,'am').gsub(/p/,'pm'))

      if time.hour < 4
        time += 86400
      end

      time

    end

  end

  def showtime_information
    # STUB out
    # informatation_array = []
    
    # theaters.each do |theater|
    #   informatation_array << { information: theater, showtimes: showtimes(theater) }
    # end

    # { theaters: informatation_array }

   {:theaters=>[{:information=>{:name=>"AMC Loews Shirlington 7", :id=>"aabxo", :address=>"2772 South Randolph St. Arlington, VA 22206", :postal_code=>"22206"}, :showtimes=>[{:time=>"12:50p", :url=>""}, {:time=>"3:05p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2893040889&mid=147737&tid=AABXO"}, {:time=>"5:20p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2893040896&mid=147737&tid=AABXO"}, {:time=>"7:55p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2893040903&mid=147737&tid=AABXO"}, {:time=>"10:05p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2893040909&mid=147737&tid=AABXO"}]}, {:information=>{:name=>"Regal Ballston Common Stadium 12", :id=>"aanhf", :address=>"671 N. Glebe Road Arlington, VA 22203", :postal_code=>"22203"}, :showtimes=>[{:time=>"12:05p", :url=>""}, {:time=>"2:30p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2896053470&mid=147737&tid=AANHF"}, {:time=>"4:50p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2896053480&mid=147737&tid=AANHF"}, {:time=>"7:30p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2896053491&mid=147737&tid=AANHF"}, {:time=>"9:50p", :url=>"https://www.fandango.com/Transaction/Ticketing/ticketboxoffice.aspx?row_count=2896053500&mid=147737&tid=AANHF"}]}]} 
  end

  def theaters(limit=2)

    theater_data = @data
    theater_list = []

    theater_data.each do |theater_hash|

      # see if the movie is playing in a theater
      if theater_hash[:movies].find{|movie| movie[:title].include? title}
        # add theater to the list
        theater_list.push(theater_hash[:theater])
      end

    end

    theater_list[0,limit]
  end
end
