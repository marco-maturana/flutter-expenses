import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_config.dart';

part 'router_provider.g.dart';

@riverpod
RouterConfig<Object>? router(Ref ref) {
  return routeConfig();
}
