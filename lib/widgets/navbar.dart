import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Implement navigation or other logic...
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kPrimaryColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_outlined, 0),
          _buildNavItem(Icons.category_outlined, 1),
          const SizedBox(width: 40), // Space for the FAB
          _buildNavItem(Icons.history_outlined, 2),
          _buildNavItem(Icons.person_outline, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    final isSelected = _selectedIndex == index;
    return IconButton(
      icon: Icon(icon,
          color: isSelected ? Colors.white : Colors.white70),
      onPressed: () => _onItemTap(index),
      splashColor: Colors.white30,
    );
  }
}
