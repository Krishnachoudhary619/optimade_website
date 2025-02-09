import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:optimade_website/routes/router_provider.dart';
import 'package:optimade_website/theme/app_color.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(appRouterProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router.config(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
