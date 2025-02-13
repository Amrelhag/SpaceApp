class Planet{
  final String name;
  final String title;
  final String about;
  final double distanceFromSun;
  final double lengthOfDay;
  final double orbitalPeriod;
  final double radius;
  final String mass;
  final double gravity;
  final String surfaceArea;
  final String Planet3DModel;
  Planet({
    required this.name,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea ,
    required this.Planet3DModel
  });

  static List<Planet> planets = [
    Planet(
      Planet3DModel: "assets/3dmodels/sun.glb",
        name: "Sun",
        title:"The Sun: Our Solar System's Star" ,
        about: "The Sun is the heart of our solar system,"
            " a massive ball of plasma that provides heat,"
            " light, and energy to everything within its gravitational pull."
            " Its immense size and temperature are fueled by nuclear fusion,"
            " a process that combines hydrogen atoms into helium,"
            " releasing vast amounts of energy. The Sun's magnetic field,"
            " which is constantly changing, influences solar activity like sunspots and solar flares,"
            " affecting space weather and potentially disrupting Earth-based technologies.",
        distanceFromSun:0,
        lengthOfDay: 0,
        orbitalPeriod: 0,
        radius: 695700,
        mass: "1.989×10³⁰ Kg",
        gravity:274,
       surfaceArea: "6.09 × 10¹² ",
         ),




    Planet(
      Planet3DModel: "assets/3dmodels/mercury.glb",

      name: "Mercury",
      title: "Mercury: The Closest Planet",
      about: "Mercury is the closest planet to the Sun and the smallest in the solar system. It has a thin atmosphere and experiences extreme temperatures, with scorching days and freezing nights.",
      distanceFromSun: 57909227 ,
      lengthOfDay: 140760,
      orbitalPeriod: 0.24,
      radius: 243970,
      mass: "3.301 × 10²³",
      gravity: 3.7,
      surfaceArea: "7.48 × 10⁷",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/venus.glb",
      name: "Venus",
      title: "Venus: Earth's Toxic Twin",
      about: "Venus has a thick carbon dioxide atmosphere that traps heat, making it the hottest planet. Its surface is covered with volcanoes and its clouds contain sulfuric acid.",
      distanceFromSun: 108209072,
      lengthOfDay: 583220,
      orbitalPeriod: 0.62,
      radius: 6051.80,
      mass: "4.867 × 10²⁴",
      gravity: 8.87,
      surfaceArea: "4.60 × 10⁸",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/earth.glb",
      name: "Earth",
      title: "Earth: Our Blue Marble",
      about: "Earth is the only known planet with life. It has a breathable atmosphere, liquid water, and a magnetic field protecting it from solar radiation.",
      distanceFromSun: 149598026,
      lengthOfDay: 23.93,
      orbitalPeriod: 1.0,
      radius: 6371,
      mass: "5.972 × 10²⁴",
      gravity: 9.81,
      surfaceArea: "5.10 × 10⁸",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/mars.glb",
      name: "Mars",
      title: "Mars: The Red Planet",
      about: "Mars has a thin atmosphere and a reddish surface due to iron oxide. Scientists believe it once had liquid water and are exploring its potential for past life.",
      distanceFromSun: 227943824,
      lengthOfDay: 24.62,
      orbitalPeriod: 1.88,
      radius: 3389.50,
      mass: "6.39 × 10²³",
      gravity: 3.71,
      surfaceArea: "1.45 × 10⁸",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/jupiter.glb",
      name: "Jupiter",
      title: "Jupiter: The Gas Giant",
      about: "Jupiter is the largest planet, mainly composed of hydrogen and helium. Its Great Red Spot is a massive storm, and it has dozens of moons, including Europa, which may have an ocean beneath its icy crust.",
      distanceFromSun: 778547669,
      lengthOfDay: 9.92,
      orbitalPeriod: 11.86,
      radius: 69911,
      mass: "1.898 × 10²⁷",
      gravity: 24.79,
      surfaceArea: "6.21 × 10¹⁵",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/saturn.glb",
      name: "Saturn",
      title: "Saturn: The Ringed Planet",
      about: "Saturn is famous for its rings, made of ice and rock. Its largest moon, Titan, has lakes of liquid methane and a thick atmosphere.",
      distanceFromSun: 1426666422,
      lengthOfDay: 10.66,
      orbitalPeriod: 29.46,
      radius: 58232,
      mass: "5.683 × 10²⁶",
      gravity: 10.44,
      surfaceArea: "4.27 × 10¹⁵",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/uranus.glb",
      name: "Uranus",
      title: "Uranus: The Tilted Planet",
      about: "Uranus rotates on its side, causing extreme seasons. It has a faint ring system and a blue color due to methane in its atmosphere.",
      distanceFromSun: 2870990000,
      lengthOfDay: 17.24,
      orbitalPeriod: 84.01,
      radius: 25362,
      mass: "8.681 × 10²⁵",
      gravity: 8.69,
      surfaceArea: "8.1 × 10¹⁵",
    ),

    Planet(
      Planet3DModel: "assets/3dmodels/neptune.glb",
    name: "Neptune",
    title: "Neptune: The Distant World",
  about: "Neptune is the farthest planet and has the strongest winds in the solar system. Its moon Triton is believed to be a captured Kuiper Belt object.",
  distanceFromSun: 4498252900,
  lengthOfDay: 16.11,
  orbitalPeriod: 164.8,
  radius: 24622,
  mass: "1.024 × 10²⁶",
  gravity: 11.15,
  surfaceArea: "7.65 × 10¹⁵",
    )
  ];
}