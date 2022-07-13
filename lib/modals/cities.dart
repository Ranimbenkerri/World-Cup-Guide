class City {
  final String name;
  final String desc;
  final String image;
  City({
    required this.name,
    required this.desc,
    required this.image,
  });
}

final List<City> cities = [
  City(
      name: 'Doha',
      desc:
          'Doha is the capital of Qatar. It has more people than the rest of Qatar combined, with a population of 2,382,000. The city is located on the coast of the Persian Gulf in the east of the country, north of Al Wakrah and south of Al Khor.',
      image: 'assets/images/Doha.jpg'),
  City(
    name: 'Al Rayyan',
    desc:
        'Al-Rayyan Sports Club is a Qatari multi-sports club fielding teams in a number of sports such as football, futsal, basketball, volleyball, handball, athletics, table tennis, and swimming. It is based at the Ahmed bin Ali Stadium in Umm Al Afaei in the city of Al Rayyan.',
    image: 'assets/images/Al_Rayyan.jpg',
  ),
  City(
    name: 'Al Wakrah',
    desc:
        "Al Wakrah is the capital city of the Al Wakrah Municipality in Qatar. Al Wakrah's eastern edge is the shores of the Persian Gulf and Qatar's capital Doha is situated to the city's immediate north. Governed by Sheikh Abdulrahman bin Jassim Al Thani, it was originally a small fishing and pearling village.",
    image: 'assets/images/Al_Wakrah.jpg',
  ),
  City(
    name: 'Lusail',
    desc:
        "Lusail is a planned city in Qatar, located on the coast, in the southern part of the municipality of Al Daayen.",
    image: 'assets/images/Lusail.jpg',
  ),
];
