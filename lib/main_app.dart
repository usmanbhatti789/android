import 'package:flutter/material.dart';

class TailorShop {
  final String name;
  final String image;
  final String phone;
  final int review;

  TailorShop({
    required this.name,
    required this.image,
    required this.phone,
    required this.review,
  });
}

class MainApp extends StatelessWidget {
  final List<TailorShop> tailorShops = [
    TailorShop(
      name: 'Tailor Shop 1',
      image: 'https://via.placeholder.com/150',
      phone: '123-456-7890',
      review: 4,
    ),
    TailorShop(
      name: 'Tailor Shop 2',
      image: 'https://via.placeholder.com/150',
      phone: '555-555-5555',
      review: 5,
    ),
    TailorShop(
      name: 'Tailor Shop 3',
      image: 'https://via.placeholder.com/150',
      phone: '999-999-9999',
      review: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main App'),
      ),
      body: ListView.builder(
        itemCount: tailorShops.length,
        itemBuilder: (BuildContext context, int index) {
          final tailorShop = tailorShops[index];
          return ListTile(
            leading: Image.network(tailorShop.image),
            title: Text(tailorShop.name),
            subtitle: Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text(tailorShop.review.toString()),
                SizedBox(width: 10),
                Icon(Icons.phone),
                Text(tailorShop.phone),
              ],
            ),
          );
        },
      ),
    );
  }
}
