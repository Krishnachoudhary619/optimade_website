import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optimade_website/theme/app_color.dart';

@RoutePage()
class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
                colors: [
                  Colors.orange.shade900,
                  AppColor.babyPurple,
                  AppColor.lightPurple,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              height: 300,
              width: 300,
              color: AppColor.cream,
            ),
          )
        ],
      ),
    );
  }
}
