import 'package:book_ui/widgets/promoCard.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 350,
      physics: const BouncingScrollPhysics(),
      children: [
        PromoCard(
            image: 'assets/images/book1.jpg',
            title: 'The Subtle Art of Not Giving F*ck',
            price: 'Price: 200 rs'),
        PromoCard(
            image: 'assets/images/book2.jpeg',
            title: 'The Namesake',
            price: 'Price: 400 rs'),
        PromoCard(
            image: 'assets/images/book3.jpeg',
            title: 'State of Wonder',
            price: 'Price: 250 rs'),
        PromoCard(
            image: 'assets/images/book4.jpg',
            title: 'Rich Dad and Poor Dad',
            price: 'Price: 400 rs')
      ],
    );
  }
}
