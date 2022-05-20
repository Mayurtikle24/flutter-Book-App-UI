class Catlogs {
  static List<Item> items = [
    Item(
        image: 'assets/images/book1.jpg',
        title: 'The Subtle art of not giving f*ck',
        price: 'Price:17'),
    Item(
        image: 'assets/images/book2.jpeg',
        title: 'The NameSake ',
        price: 'Price:25'),
    Item(
        image: 'assets/images/book3.jpeg',
        title: 'State of Wonders',
        price: 'Price:23'),
    Item(
        image: 'assets/images/book4.jpg',
        title: 'Rich and Poor Dad',
        price: 'Price:20'),
  ];
}

class Item {
  final String image;
  final String title;
  final String price;

  Item({
    required this.image,
    required this.title,
    required this.price,
  });

  Item copyWith({
    String? image,
    String? title,
    String? price,
  }) {
    return Item(
      image: image ?? this.image,
      title: title ?? this.title,
      price: price ?? this.price,
    );
  }
}
