import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBarComponent extends HookWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final uri = GoRouterState.of(context).uri;
    final selectedIndex = useState(uri.path == '/' ? 0 : 1);

    return BottomNavigationBar(
      elevation: 10,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.currency_exchange),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.category),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
      ],
      currentIndex: selectedIndex.value,
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black45,
      onTap: (int index) async {
        selectedIndex.value = index;

        if (context.mounted) {
          if (index == 0) {
            context.go('/');
          } else if (index == 1) {
            context.go('/transactions');
          } else {
            print('index $index');
          }
        }
      },
    );
  }
}
