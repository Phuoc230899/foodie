class Shop {
  final int id;
  final String name;
  final String imageUrl;
  final String star;
  final bool isOpen;
  final String address;
  final String category;
  final String distance;

  Shop({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.star,
    required this.isOpen,
    required this.address,
    required this.category,
    required this.distance,
  });
}

final List<Shop> listShops = [
  Shop(
    id: 1,
    name: 'Happy Bones',
    imageUrl: 'assets/images/shop1.jpg',
    star: '4.5',
    isOpen: true,
    address: '100 Hoàng Văn Thái, Liên Chiểu, Đà Nẵng, Việt Nam',
    category: 'USA',
    distance: '10.0 km'
  ),
  Shop(
    id: 2,
    name: 'Kain Thai',
    imageUrl: 'assets/images/shop2.jpg',
    star: '5.0',
    isOpen: true,
    address: '99 Phan Châu Trinh, Hải Châu, Đà Nẵng, Việt Nam',
    category: 'Thailand',
    distance: '5.6 km'
  ),
  Shop(
    id: 5,
    name: 'Fresh Fruit',
    imageUrl: 'assets/images/shop3.jpg',
    star: '4.0',
    isOpen: false,
    address: '398 Ông Ích Khiêm, Thanh Khê, Đà Nẵng, Việt Nam',
    category: 'Vietnam',
    distance: '0.9 km'
  ),
];