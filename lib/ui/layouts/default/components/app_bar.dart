import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppBarComponent extends HookWidget implements PreferredSizeWidget {
  final String title;

  const AppBarComponent({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      toolbarTextStyle: const TextStyle(color: Colors.white),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
