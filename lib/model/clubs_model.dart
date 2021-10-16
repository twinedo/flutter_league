class ClubDetail {
  String name;
  String description;
  String liga;
  String manager;
  String stadion;
  String didirikan;
  String logo;
  String website;

  ClubDetail({
    required this.name,
    required this.description,
    required this.liga,
    required this.manager,
    required this.stadion,
    required this.didirikan,
    required this.logo,
    required this.website,
  });
}

var premierLeagueList = [
  ClubDetail(
    name: 'Manchester United',
    description: 'Manchester United Football Club adalah sebuah klub sepak bola profesional Inggris yang berbasis di Old Trafford, Manchester Raya, yang bermain di Liga Inggris. Didirikan sebagai Newton Heath LYR Football Club pada tahun 1878, klub ini berganti nama menjadi Manchester United pada 1902 dan pindah ke Old Trafford pada tahun 1910.',
    liga: 'Premier League',
    manager: 'Ole Gunnar Solskjær',
    stadion: 'Old Trafford',
    didirikan: '1878',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/7/7a/Manchester_United_FC_crest.svg/220px-Manchester_United_FC_crest.svg.png',
    website: 'http://www.manutd.com/'
  ),
  ClubDetail(
    name: 'Chelsea',
    description: 'Chelsea Football Club adalah sebuah klub sepak bola yang bermarkas di Fulham, London. Chelsea didirikan pada tahun 1905 dan kini berkompetisi di Liga Utama Inggris. Kesuksesan pertama Chelsea diraih saat meraih gelar juara liga pada tahun 1955.',
    liga: 'Premier League',
    manager: 'Thomas Tuchel',
    stadion: 'Stamford Bridge',
    didirikan: '1905',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/c/cc/Chelsea_FC.svg/200px-Chelsea_FC.svg.png',
    website: 'http://www.chelseafc.com/'
  ),
  ClubDetail(
    name: 'Liverpool',
    description: 'Liverpool Football Club adalah sebuah klub sepak bola asal Inggris yang berbasis di Kota Liverpool. Saat ini Liverpool adalah peserta Liga Utama Inggris. Liverpool juga merupakan juara Liga Utama Inggris musim 2019–2020. Liverpool didirikan pada tahun 1892 dan bergabung dengan Football League pada tahun berikutnya.',
    liga: 'Premier League',
    manager: 'Jürgen Klopp',
    stadion: 'Anfield',
    didirikan: '1892',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/0/0c/Liverpool_FC.svg/200px-Liverpool_FC.svg.png',
    website: 'http://www.liverpoolfc.com/'
  ),
  ClubDetail(
    name: 'Arsenal',
    description: 'Arsenal Football Club adalah klub sepak bola profesional Inggris yang berbasis di daerah Holloway, London. Didirikan pada 1886 dengan nama Dial Square.',
    liga: 'Premier League',
    manager: 'Mikel Arteta',
    stadion: 'Emirates',
    didirikan: '1886',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/5/53/Arsenal_FC.svg/170px-Arsenal_FC.svg.png',
    website: 'http://www.arsenal.com/'
  ),
  ClubDetail(
    name: 'Manchester City',
    description: 'Manchester City Football Club adalah sebuah klub sepak bola profesional dari Inggris yang bermain di Liga Premier Inggris. Klub ini merupakan klub sekota dengan Manchester United dan bermarkas di Stadion Etihad, Manchester. Pertandingan pertama dimainkan pada bulan November 1880. Pada saat itu masih bernama St Mark`s.',
    liga: 'Premier League',
    manager: 'Pep Guardiola',
    stadion: 'City of Manchester',
    didirikan: '1880',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/e/eb/Manchester_City_FC_badge.svg/200px-Manchester_City_FC_badge.svg.png',
    website: 'http://www.mancity.com/'
  ),
  ClubDetail(
    name: 'Newcastle United',
    description: 'Newcastle United Football Club adalah Klub Sepak Bola Profesional asal Inggris. Berbudget Sultan sejak diakuisisi oleh Muhammad bin Salman, Public Investment Fund. Berbasis di Newcastle upon Tyne Inggris Raya, dan bermain di Liga Utama Inggris Premier League, kompetisi kasta teratas dalam sepak bola Inggris.',
    liga: 'Premier League',
    manager: 'Steve Bruce',
    stadion: 'St James Park',
    didirikan: '1892',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/5/56/Newcastle_United_Logo.svg/200px-Newcastle_United_Logo.svg.png',
    website: 'http://www.nufc.co.uk/'
  ),
  ClubDetail(
    name: 'Tottenham Hotspur',
    description: 'Tottenham Hotspur Football Club, adalah klub sepak bola yang berasal dari Tottenham, sebuah daerah yang berada di wilayah utara London. Mereka juga dikenal sebagai Spurs, The Spurs dan Tottenham, sementara penggemar mereka memberi mereka nama the Lilywhites karena seragam tradisional mereka yang berwarna putih',
    liga: 'Premier League',
    manager: 'Nuno Espírito Santo',
    stadion: 'Tottenham Hotspur Stadium',
    didirikan: '1882',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/b/b4/Tottenham_Hotspur.svg/110px-Tottenham_Hotspur.svg.png',
    website: 'http://www.tottenhamhotspur.com/'
  ),
  ClubDetail(
    name: 'Leicester City',
    description: 'Leicester City F.C. adalah sebuah tim sepak bola Inggris berbasis di Leicester. Leicester Dikenal juga dengan sebutan The Foxes. Klub ini memainkan pertandingan kandangnya di Stadion King Power yang berkapsitas 32.000 penonton.',
    liga: 'Premier League',
    manager: 'Brendan Rodgers',
    stadion: 'King Power',
    didirikan: '1884',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/6/6c/Leicester_FC_Logo.svg/200px-Leicester_FC_Logo.svg.png',
    website: 'http://www.lcfc.com/'
  ),
  ClubDetail(
    name: 'Everton',
    description: 'Everton Football Club adalah sebuah klub sepak bola profesional yang bermarkas di Kota Liverpool, Inggris yang saat ini berkompetisi di Liga Premier, divisi teratas Liga Inggris. Klub ini merupakan rival dari klub sekota Liverpool. ',
    liga: 'Premier League',
    manager: 'Rafael Benítez',
    stadion: 'Goodison Park',
    didirikan: '1878',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/7/7c/Everton_FC_logo.svg/200px-Everton_FC_logo.svg.png',
    website: 'http://www.evertonfc.com/'
  ),
  ClubDetail(
    name: 'Leeds United',
    description: 'Leeds United Football Club adalah sebuah klub sepak bola asal Inggris yang berbasis di Beeston, Leeds, West Yorkshire. Pada akhir musim 2019–20, mereka mampu menjadi juara Kejuaraan EFL, sehingga akan promosi ke Liga Utama Inggris pada musim selanjutnya.',
    liga: 'Premier League',
    manager: 'Marcelo Bielsa',
    stadion: 'Elland Road',
    didirikan: '1919',
    logo: 'https://upload.wikimedia.org/wikipedia/id/thumb/5/54/Leeds_United_F.C._logo.svg/163px-Leeds_United_F.C._logo.svg.png',
    website: 'http://www.leedsunited.com/'
  ),
];