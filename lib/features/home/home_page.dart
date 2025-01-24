import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optimade_website/shared/widgets/common_app_bar.dart';
import 'package:optimade_website/theme/text_theme.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.0026,
              0.069,
              0.1353,
              0.2016,
              0.2679,
              0.3342,
              0.4005,
              0.4668,
              0.5332,
              0.5995,
              0.6658,
              0.7321,
              0.7984,
              0.8647,
              0.9310,
              0.9974
            ],
            colors: [
              Color.fromRGBO(255, 255, 255, 0),
              Color.fromRGBO(255, 255, 255, 0.01),
              Color.fromRGBO(255, 255, 255, 0.04),
              Color.fromRGBO(255, 255, 255, 0.08),
              Color.fromRGBO(255, 255, 255, 0.15),
              Color.fromRGBO(255, 255, 255, 0.23),
              Color.fromRGBO(255, 255, 255, 0.33),
              Color.fromRGBO(255, 255, 255, 0.44),
              Color.fromRGBO(255, 255, 255, 0.56),
              Color.fromRGBO(255, 255, 255, 0.67),
              Color.fromRGBO(255, 255, 255, 0.77),
              Color.fromRGBO(255, 255, 255, 0.85),
              Color.fromRGBO(255, 255, 255, 0.92),
              Color.fromRGBO(255, 255, 255, 0.96),
              Color.fromRGBO(255, 255, 255, 0.99),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Hello.',
            style: AppTextTheme.semiBold30,
          ),
        ),
      ),
    );
  }
}
