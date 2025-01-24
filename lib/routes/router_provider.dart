import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:optimade_website/routes/app_router.dart';

final appRouterProvider = StateProvider<AppRouter>((ref) {
  return AppRouter();
});
