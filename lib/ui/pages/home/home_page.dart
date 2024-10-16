import 'package:flutter/material.dart';
import 'package:flutter_expenses/ui/layouts/default/default_layout.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Home Page',
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
          ElevatedButton(
            onPressed: () => context.go('/transactions'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 10.0,
            ),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Go to Transactions Page',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
