import 'package:flutter/material.dart';
import 'package:flutter_expenses/ui/layouts/default/default_layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/bottom_navigation_bar.dart';
import 'pages/categories/categories_page.dart';
import 'pages/dashboard/dashboard_page.dart';
import 'pages/menu/menu_page.dart';
import 'pages/profile/profile_page.dart';
import 'pages/transactions/transactions_page.dart';
import 'utils/providers/current_page_provider.dart';
import 'utils/providers/page_controller_provider.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerNotifierProvider);

    return DefaultLayout(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) =>
            ref.read(currentPageProvider.notifier).index = index,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          DashboardPage(),
          TransactionsPage(),
          CategoriesPage(),
          ProfilePage(),
          MenuPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBarComponent(),
    );
  }
}
