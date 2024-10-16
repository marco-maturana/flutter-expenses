import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class TransactionsPage extends HookWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height -
            (MediaQuery.of(context).padding.top + kToolbarHeight.toDouble()),
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Transactions Page',
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
              onPressed: () => context.go('/'),
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
                      'Go to Home Page',
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
      ),
    );
  }
}
