import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: secondpage(),
    );
  }
}

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery App'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        // Add drawer contents here
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey Halal, Good Afternoon!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search dishes, restaurants',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'All Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryCard(
                  imageUrl: 'assets/pizza.png', // Replace with actual image path
                  categoryName: 'Pizza',
                  startingPrice: '\$70',
                ),
                CategoryCard(
                  imageUrl: 'assets/garden.png', // Replace with actual image path
                  categoryName: 'Burger',
                  startingPrice: '\$50',
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Open Restaurants',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  RestaurantCard(
                    imageUrl: 'assets/sushi.png', // Replace with actual image path
                    name: 'Rose Garden Restaurant',
                    rating: 4.7,
                    deliveryFee: 'Free',
                    deliveryTime: '20 min',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  final String startingPrice;

  CategoryCard({
    required this.imageUrl,
    required this.categoryName,
    required this.startingPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, width: 80, height: 80),
        SizedBox(height: 8),
        Text(categoryName),
        Text('Starting $startingPrice'),
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rating;
  final String deliveryFee;
  final String deliveryTime;

  RestaurantCard({
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.deliveryFee,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imageUrl, width: 50, height: 50),
        title: Text(name),
        subtitle: Row(
          children: [
            Icon(Icons.star, color: Colors.orange, size: 16),
            Text(rating.toString()),
            SizedBox(width: 16),
            Text(deliveryFee),
            SizedBox(width: 16),
            Text(deliveryTime),
          ],
        ),
      ),
    );
  }
}
