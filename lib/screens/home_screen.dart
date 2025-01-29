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
      // Advanced bottom nav bar
      bottomNavigationBar: const CustomNavBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 270,
            // Instead of a flat color, we use a gradient
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Grocery Store',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Gradient behind the image
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kColor2, kColor3],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  // Main image
                  Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: Container(
              // This container has a slightly rounded top edge
              decoration: const BoxDecoration(
                color: kColor1,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: const [
                    CustomSearchBar(),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: kColor1,
              child: CategoryList(categories: _categories),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = _products[index];
                  return ProductCard(product: product);
                },
                childCount: _products.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 270,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
