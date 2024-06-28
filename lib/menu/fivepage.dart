import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Fivepage(),
    );
  }
}

class Fivepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
          
            SizedBox(width: 8),
            Text('Pizza'),
           

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Pizza',
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
                    name: 'Pizza Bistro',
                    restaurant: 'Rose Garden',
                    price: 40,
                    imageUrl: 'https://pngimg.com/d/pizza_PNG43990.png',
                  ),
                  BurgerCard(
                    name: 'Smokin\' Pizza',
                    restaurant: 'Cafenio Restaurant',
                    price: 60,
                    imageUrl: 'https://w7.pngwing.com/pngs/992/342/png-transparent-seafood-pizza-italian-cuisine-tomato-sauce-pizza-barbecue-food-seafood-thumbnail.png',
                  ),
                  BurgerCard(
                    name: 'Buffalo Pizza',
                    restaurant: 'Kaji Firm Kitchen',
                    price: 75,
                    imageUrl: 'https://w7.pngwing.com/pngs/542/934/png-transparent-california-style-pizza-sicilian-pizza-hawaiian-pizza-bacon-pizza.png',
                  ),
                  BurgerCard(
                    name: 'Bullseye Pizza',
                    restaurant: 'Kabab Restaurant',
                    price: 94,
                    imageUrl: 'https://purepng.com/public/uploads/large/purepng.com-pizzafood-pizza-941524644327twewe.png',
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
 