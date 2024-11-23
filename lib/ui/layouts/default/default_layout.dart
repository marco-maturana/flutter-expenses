import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'components/app_bar.dart';

class DefaultLayout extends HookWidget {
  final Widget body;
  final PreferredSizeWidget? bottomNavigationBar;

  const DefaultLayout({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    const appBar = AppBarComponent(title: 'Flutter Expenses');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height -
              (MediaQuery.of(context).padding.top +
                  appBar.preferredSize.height +
                  (bottomNavigationBar?.preferredSize.height ?? 0)),
          child: body,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
