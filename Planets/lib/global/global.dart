import 'package:planet/modals/model.dart';

class Global {
  static late Planets selected;

  static List<Planets> planets = <Planets>[
    Planets(
      image: 'assets/images/mars.png',
      image2: 'assets/images/mars1.webp',
      name: 'Mars',
      distance: '60.6m',
      charge: 2.8,
      distanceSun: 66.818,
      distanceEarth: 226.14,
      speed: 3.711,
      description:
          "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape.",
    ),
    Planets(
      image: 'assets/images/earth.png',
      image2: 'assets/images/earth1.jpg',
      name: 'Earth',
      distance: '55.6m',
      charge: 3.2,
      distanceSun: 48.14,
      distanceEarth: 250.14,
      speed: 5.562,
      description:
          "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers. The remaining 29% of Earth's surface is land,",
    ),
    Planets(
      image: 'assets/images/mercury.png',
      image2: 'assets/images/mercury1.jpg',
      name: 'Mercury',
      distance: '75.6m',
      charge: 5.6,
      distanceSun: 99.818,
      distanceEarth: 225.14,
      speed: 6.856,
      description:
          "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes",
    ),
    Planets(
      image: 'assets/images/moon.png',
      image2: 'assets/images/moon1.jpg',
      name: 'Moon',
      distance: '55.6m',
      charge: 5.5,
      distanceSun: 35.818,
      distanceEarth: 532.14,
      speed: 5.652,
      description:
          "The Moon is Earth's only natural satellite. It is the fifth largest satellite in the Solar System and the largest and most massive relative to its parent planet,[f] with a diameter about one-quarter that of Earth (comparable to the width of Australia).",
    ),
    Planets(
      image: 'assets/images/neptune.png',
      image2: 'assets/images/neptune1.jpg',
      name: 'Neptune',
      distance: '60.6m',
      charge: 2.5,
      distanceSun: 20.818,
      distanceEarth: 304.14,
      speed: 9.521,
      description:
          "Neptune is the eighth planet from the Sun and the farthest known solar planet. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus.",
    ),
    Planets(
      image: 'assets/images/jupiter.png',
      image2: 'assets/images/jupiter1.jpg',
      name: 'Jupiter',
      distance: '45.6m',
      charge: 5.5,
      distanceSun: 25.818,
      distanceEarth: 532.14,
      speed: 5.652,
      description:
      "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun.",
    ),
    Planets(
      image: 'assets/images/saturn.png',
      image2: 'assets/images/saturn1.jpg',
      name: 'Saturn',
      distance: '70.6m',
      charge: 2.5,
      distanceSun: 30.818,
      distanceEarth: 304.14,
      speed: 9.521,
      description:
      "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.[23][24] It has only one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive.[25][26][27]",
    ),
  ];
}
