import 'package:flutter/material.dart';
import 'package:shop_flutter/menu/fivepage.dart';
import 'package:shop_flutter/menu/fourthpage.dart';
import 'package:shop_flutter/menu/secondpage.dart';
import 'package:shop_flutter/menu/thirdpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu(),
    );
  }
}

class Menu extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey Halal, Good Afternoon!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search dishes, restaurants',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Handle click event for "All Categories"
                print('All Categories clicked');
              },
              child: Text(
                'All Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      GestureDetector(
        onTap: () {
          // Navigate to the next screen when "All" is clicked
          Navigator.push(context, MaterialPageRoute(builder: (context) => secondpage()));
        },
        child: CategoryChip(label: 'All', icon: Icons.whatshot),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Fourthpage()));
        },
        child: CategoryChip(label: 'Hot Dog', icon: Icons.fastfood),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Thirdpage()));
        },
        child: CategoryChip(label: 'Burger', icon: Icons.local_dining),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Fivepage()));
        },
        child: CategoryChip(label: 'Pizza', icon: Icons.local_pizza),
      ),
      GestureDetector(
        onTap: () {
          // Handle other category chips' actions here
        },
        child: CategoryChip(label: 'Sushi', icon: Icons.set_meal),
      ),
    ],
  ),
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
                    name: 'Rose Garden Restaurant',
                    rating: 4.7,
                    deliveryTime: '20 min',
                    deliveryFee: 'Free',
                    imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dcaf1af5-3162-42f2-a863-b4ce4d9d11ec/dd3d416-326cc8e4-ec52-451f-bcd2-5fba96dea4b3.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2RjYWYxYWY1LTMxNjItNDJmMi1hODYzLWI0Y2U0ZDlkMTFlY1wvZGQzZDQxNi0zMjZjYzhlNC1lYzUyLTQ1MWYtYmNkMi01ZmJhOTZkZWE0YjMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.1t57IcCD5NWJ8yUKn4Q1iAwvJTa5g8-jvhicNz9R6fQ', // Replace with actual image URL
                  ),
                  RestaurantCard(
                    name: 'Pizza Palace',
                    rating: 4.5,
                    deliveryTime: '30 min',
                    deliveryFee: '\$2.00',
                    imageUrl: 'https://t4.ftcdn.net/jpg/05/74/68/47/360_F_574684775_Vw9D3VkXofqdoeWdPkI6ORTafqA6zhqg.jpg', // Replace with actual image URL
                  ),
                  RestaurantCard(
                    name: 'Sushi World',
                    rating: 4.8,
                    deliveryTime: '25 min',
                    deliveryFee: 'Free',
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRARJcn6wBzbRB7GZg5Up5EK-kPWcSHsuXRaQ&usqp=CAU', // Replace with actual image URL
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

class CategoryChip extends StatelessWidget {
  final String label;
  final IconData icon;

  CategoryChip({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        avatar: Icon(icon, color: Colors.orange),
        label: Text(label),
        backgroundColor: Colors.orange[50],
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
