import 'package:auto_route/auto_route.dart';
import 'package:optimade_website/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter();

  // ignore: unused_field

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: ContactUsRoute.page,
        ),
      ];
}
