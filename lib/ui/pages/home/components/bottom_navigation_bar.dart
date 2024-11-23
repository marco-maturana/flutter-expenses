import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/providers/current_page_provider.dart';
import 'package:flutter_expenses/ui/pages/home/utils/providers/page_controller_provider.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.currency_exchange_rounded,
    title: 'Transactions',
  ),
  TabItem(
    icon: Icons.category_rounded,
    title: 'Categories',
  ),
  TabItem(
    icon: Icons.person,
    title: 'Profile',
  ),
  TabItem(
    icon: Icons.menu,
    title: 'Menu',
  ),
];

class BottomNavigationBarComponent extends HookConsumerWidget
    implements PreferredSizeWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(87);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(currentPageProvider);

    return BottomBarInspiredInside(
      items: items,
      backgroundColor: Colors.white,
      color: Colors.black45,
      colorSelected: Colors.white,
      indexSelected: currentPage,
      onTap: (index) => ref
          .read(pageControllerNotifierProvider.notifier)
          .animateToPage(index),
      animated: true,
      elevation: 7,
      chipStyle: const ChipStyle(isHexagon: false, convexBridge: false),
      itemStyle: ItemStyle.circle,
    );
  }
}
