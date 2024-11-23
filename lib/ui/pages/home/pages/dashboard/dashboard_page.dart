import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Expanded(
          child: Center(
            child: Text(
              'Dashboard Page',
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
