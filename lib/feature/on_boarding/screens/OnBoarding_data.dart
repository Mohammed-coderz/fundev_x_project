class OnBoardingData {
  final String image;
  final String titleDecription;
  final String subTitleDecription;

  OnBoardingData({
    required this.image,
    required this.titleDecription,
    required this.subTitleDecription,
  });
}

List<OnBoardingData> onBoardingDataList = [
  OnBoardingData(
    image: 'assets/images/on_boarding_1.png',
    titleDecription: 'Book Services Fast',
    subTitleDecription:
        'Find trusted service providers and book appointments in just a few steps.',
  ),
  OnBoardingData(
    image: 'assets/images/on_boarding_2.png',
    titleDecription: 'Find & Book Services',
    subTitleDecription:
        'Browse services, choose the best provider, and book your preferred time instantly.',
  ),
  OnBoardingData(
    image: 'assets/images/on_boarding_3.png',
    titleDecription: 'Manage Services',
    subTitleDecription:
        'Add services, set availability, and manage bookings with ease.',
  ),
];
