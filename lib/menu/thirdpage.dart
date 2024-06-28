import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Thirdpage(),
    );
  }
}

class Thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [

            SizedBox(width: 8),
            Text('BURGER'),
           

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Burgers',
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
                    name: 'Burger Bistro',
                    restaurant: 'Rose Garden',
                    price: 40,
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJfil_12iDPKI6VUiqFqLBG8FpVdN_PzpAnA&usqp=CAU',
                  ),
                  BurgerCard(
                    name: 'Smokin\' Burger',
                    restaurant: 'Cafenio Restaurant',
                    price: 60,
                    imageUrl: 'https://www.pngfind.com/pngs/m/653-6530519_download-transparent-png-fast-food-png-download.png',
                  ),
                  BurgerCard(
                    name: 'Buffalo Burgers',
                    restaurant: 'Kaji Firm Kitchen',
                    price: 75,
                    imageUrl: 'https://www.pngfind.com/pngs/m/83-830986_free-png-download-burger-and-sandwich-transparent-png.png',
                  ),
                  BurgerCard(
                    name: 'Bullseye Burgers',
                    restaurant: 'Kabab Restaurant',
                    price: 94,
                    imageUrl: 'https://w7.pngwing.com/pngs/458/929/png-transparent-hamburger-and-french-fries-fast-food-junk-food-hamburger-french-fries-fried-chicken-fast-food-banner-miscellaneous-food-recipe-thumbnail.png',
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
