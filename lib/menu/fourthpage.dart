import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Fourthpage(),
    );
  }
}

class Fourthpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
          
            SizedBox(width: 8),
            Text('Hotdog'),
           

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Hotdogs',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  BurgerCard(
                    name: 'Hogdog Bistro',
                    restaurant: 'Rose Garden',
                    price: 40,
                    imageUrl: 'https://img.freepik.com/free-photo/classic-hot-dog-with-ketchup-mustard-sauce-isolated-white-background_123827-29747.jpg',
                  ),
                  BurgerCard(
                    name: 'Smokin\' Hotdog',
                    restaurant: 'Cafenio Restaurant',
                    price: 60,
                    imageUrl: 'https://w7.pngwing.com/pngs/626/707/png-transparent-hot-dog-food-hot-dog-bread-sausage-thumbnail.png',
                  ),
                  BurgerCard(
                    name: 'Buffalo Hotdog',
                    restaurant: 'Kaji Firm Kitchen',
                    price: 75,
                    imageUrl: 'https://pngimg.com/d/hot_dog_PNG10201.png',
                  ),
                  BurgerCard(
                    name: 'Bullseye Hotdog',
                    restaurant: 'Kabab Restaurant',
                    price: 94,
                    imageUrl: 'https://e7.pngegg.com/pngimages/647/516/png-clipart-hot-dog-bun-hamburger-food-cart-hot-dog-cart-free-bread-and-vegetables-to-pull-material-leaf-vegetable-free-logo-design-template.png',
                  ),
                ],
              ),
            )
         
                ],
              ),
            ),
          
        );
  }
}

class BurgerCard extends StatelessWidget {
  final String name;
  final String restaurant;
  final double price;
  final String imageUrl;

  BurgerCard({
    required this.name,
    required this.restaurant,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(restaurant),
                SizedBox(height: 4),
                Text('\$$price'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final double rating;
  final String deliveryTime;
  final String deliveryFee;
  final String imageUrl;

  RestaurantCard({
    required this.name,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.network(imageUrl, fit: BoxFit.cover, width: 50, height: 50),
        title: Text(name),
        subtitle: Row(
          children: [
            Icon(Icons.star, color: Colors.orange, size: 16),
            SizedBox(width: 4),
            Text(rating.toString()),
            SizedBox(width: 16),
            Text(deliveryTime),
            SizedBox(width: 16),
            Text(deliveryFee),
          ],
        ),
      ),
    );
  }
}
 