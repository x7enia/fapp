import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/navbar.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_list.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';
import '../models/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> _categories = [
    Category(id: '1', name: 'Fruits', imageUrl: 'assets/images/1.jpg'),
    Category(id: '2', name: 'Vegetables', imageUrl: 'assets/images/1.jpg'),
    Category(id: '3', name: 'Meats', imageUrl: 'assets/images/1.jpg'),
    Category(id: '4', name: 'Dairy', imageUrl: 'assets/images/1.jpg'),
    Category(id: '5', name: 'Drinks', imageUrl: 'assets/images/1.jpg'),
  ];

  final List<Product> _products = [
    Product(id: '1', name: 'Fresh Apples', imageUrl: 'assets/images/1.jpg', price: 3.99, rating: 4.5),
    Product(id: '2', name: 'Organic Bananas', imageUrl: 'assets/images/1.jpg', price: 2.49, rating: 4.2),
    Product(id: '3', name: 'Whole Chicken', imageUrl: 'assets/images/1.jpg', price: 7.99, rating: 4.8),
    Product(id: '4', name: 'Low Fat Milk', imageUrl: 'assets/images/1.jpg', price: 1.59, rating: 4.4),
    Product(id: '5', name: 'Orange Juice', imageUrl: 'assets/images/1.jpg', price: 2.99, rating: 4.6),
    Product(id: '6', name: 'Broccoli', imageUrl: 'assets/images/1.jpg', price: 1.20, rating: 4.1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1, // Set background color
      floatingActionButton: FloatingActionButton(
        backgroundColor: kColor3, // Use kColor3 for FAB
        child: const Icon(Icons.shopping_cart_outlined),
        onPressed: () {
          // Navigate to cart or perform an action
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomNavBar(),

      body: CustomScrollView(
        slivers: [
          // SliverAppBar with a gradient background
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Grocery Store',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Gradient background
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kColor2, kColor3],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  // Semi-transparent image overlay
                  Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Search bar section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: const CustomSearchBar(),
            ),
          ),

          // Category horizontal list
          SliverToBoxAdapter(
            child: CategoryList(categories: _categories),
          ),

          // Product Grid
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 280,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = _products[index];
                  return ProductCard(product: product);
                },
                childCount: _products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
