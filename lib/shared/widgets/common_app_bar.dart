import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:optimade_website/features/home/home_page.dart';
import 'package:optimade_website/gen/assets.gen.dart';
import 'package:optimade_website/routes/app_router.gr.dart';
import 'package:optimade_website/shared/extension/widget_ext.dart';
import 'package:optimade_website/shared/widgets/custom_filled_button.dart';
import 'package:optimade_website/theme/app_color.dart';
import 'package:optimade_website/theme/text_theme.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: false,
        toolbarHeight: 93,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.optimadeLogo.image(height: 80),
            textWidget(title: 'Service', onTap: () {}),
            textWidget(title: 'Industries', onTap: () {}),
            textWidget(title: 'Portfolio', onTap: () {}),
            textWidget(title: 'About us', onTap: () {}),
            textWidget(title: 'About us', onTap: () {}),
            textWidget(title: 'Blog', onTap: () {}),
            const Expanded(child: Gap(10)),
            CustomFilledButton(
              title: 'Contact Us',
              onTap: () {
                context.pushRoute(ContactUsRoute());
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(93);

  Widget textWidget({required String title, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: AppTextTheme.header.copyWith(
            color: AppColor.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1),
        textAlign: TextAlign.center,
      ).padHor(10),
    );
  }
}
