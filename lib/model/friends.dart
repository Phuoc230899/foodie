class Contacts {
  final String img;
  final String name;
  final int reviews;
  final bool followed;

  Contacts(
      {required this.img,
      required this.name,
      required this.reviews,
      required this.followed});
}

class Suggetions {
  final String img;
  final String name;
  final int reviews;

  Suggetions({
    required this.img,
    required this.name,
    required this.reviews,
  });
}

List<Contacts> list_contacts = [
  Contacts(
      img: 'assets/images/avatar1.png',
      name: 'Phước Hoàng',
      reviews: 50,
      followed: false),
  Contacts(
      img: 'assets/images/avatar2.webp',
      name: 'Mai Long',
      reviews: 30,
      followed: true),
  Contacts(
      img: 'assets/images/avatar3.jpg',
      name: 'Đông Lê',
      reviews: 49,
      followed: true),
  Contacts(
      img: 'assets/images/avatar1.png',
      name: 'Cừu',
      reviews: 50,
      followed: false),
];
List<Suggetions> list_suggetions = [
  Suggetions(
    img: 'assets/images/avatar2.webp',
    name: 'Hậu CX',
    reviews: 30,
  ),
  Suggetions(
    img: 'assets/images/avatar3.jpg',
    name: 'Lê Duy',
    reviews: 496,
  ),
  Suggetions(
    img: 'assets/images/avatar1.png',
    name: 'Ghẹ',
    reviews: 59,
  ),
  Suggetions(
    img: 'assets/images/avatar2.webp',
    name: 'Hưng Trần',
    reviews: 30,
  ),
  Suggetions(
    img: 'assets/images/avatar3.jpg',
    name: 'Hiền Phùng',
    reviews: 48,
  ),
];
