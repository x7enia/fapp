import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kColor2,
      elevation: 4,
      borderRadius: BorderRadius.circular(16),
      child: TextField(
        style: const TextStyle(color: Colors.black87),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search, color: kColor4),
          hintText: "Search for products...",
          hintStyle: TextStyle(color: Colors.black54),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        ),
      ),
    );
  }
}
