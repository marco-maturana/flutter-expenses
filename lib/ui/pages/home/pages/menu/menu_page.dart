import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MenuPage extends HookWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: Center(
            child: Text(
              'Menu Page',
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
