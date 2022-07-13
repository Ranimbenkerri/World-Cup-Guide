class OnboardingContents {
  final String title;
  final String image;

  OnboardingContents({required this.title, required this.image});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Welcome To Qatar22",
    image: "assets/images/onb1.png",
  ),
  OnboardingContents(
    title: "Buy Ticktets With Ease",
    image: "assets/images/onb2.png",
  ),
  OnboardingContents(
    title: "Book Flights & Hotels From One Place",
    image: "assets/images/onb3.jpg",
  ),
];
