import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/constants.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;

  const CategoryList({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final category = categories[index];
          return InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: kColor2,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.asset(
                        category.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      category.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
