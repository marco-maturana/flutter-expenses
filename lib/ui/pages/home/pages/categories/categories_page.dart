import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoriesPage extends HookWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: Center(
            child: Text(
              'Categories Page',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Readex Pro',
                color: Color(0xFF585C67),
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
