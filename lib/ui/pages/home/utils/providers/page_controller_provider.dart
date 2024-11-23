import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_controller_provider.g.dart';

@riverpod
class PageControllerNotifier extends _$PageControllerNotifier {
  @override
  PageController build() {
    return PageController();
  }

  void animateToPage(int page) {
    state.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
