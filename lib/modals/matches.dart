class Match {
  final String stade;
  final String date;
  final String team1name;
  final String team1image;
  final String team2name;
  final String team2image;
  Match(
      {required this.stade,
      required this.date,
      required this.team1name,
      required this.team1image,
      required this.team2name,
      required this.team2image});
}

List<Match> matches = [
  Match(
    stade: 'Al Thumama Stadium',
    date: 'Mo,21',
    team1image: 'assets/images/senegal.png',
    team1name: 'Senegal',
    team2image: 'assets/images/netherland.png',
    team2name: 'Netherland',
  ),
  Match(
    stade: 'Al Janoub Stadium',
    date: 'Th,24',
    team1image: 'assets/images/portugal.png',
    team1name: 'Portugal',
    team2image: 'assets/images/ghana.png',
    team2name: 'Ghana',
  ),
  Match(
      stade: 'Education City Stadium',
      date: 'Sa,26',
      team1image: 'assets/images/poland.png',
      team1name: 'Poland',
      team2image: 'assets/images/saudi-arabia.png',
      team2name: 'Saudi Arabia'),
  Match(
    stade: 'Khalifa International Stadium',
    date: 'We,23',
    team1image: 'assets/images/germany.png',
    team1name: 'germany',
    team2image: 'assets/images/japan.png',
    team2name: 'japan',
  ),
  Match(
    stade: 'Khalifa International Stadium',
    date: 'Su,27',
    team1image: 'assets/images/croatia.png',
    team1name: 'Croatia',
    team2image: 'assets/images/canada.png',
    team2name: 'Canada',
  ),
  Match(
    stade: 'Al Janoub Stadium',
    date: 'Mo,28',
    team1image: 'assets/images/cameroon.png',
    team1name: 'Cameroon',
    team2image: 'assets/images/serbia.png',
    team2name: 'Serbia',
  ),
];
