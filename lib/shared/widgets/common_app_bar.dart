import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        leadingWidth: 0.0,
        actions: [
          CustomFilledButton(
            title: 'Contact Us',
            onTap: () {
              context.pushRoute(const ContactUsRoute());
            },
          ).pad(right: 35)
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.optimadeLogo.image(height: 80),
            textWidget(title: 'Services ', onTap: () {}),
            textWidget(title: 'Industries', onTap: () {}),
            textWidget(title: 'Portfolio', onTap: () {}),
            textWidget(title: 'About us', onTap: () {}),
            textWidget(title: 'About us', onTap: () {}),
            textWidget(title: 'Blog', onTap: () {}),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(93);

  Widget textWidget({required String title, required VoidCallback onTap}) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
            child: Text(
          title,
          style: AppTextTheme.header.copyWith(
            color: AppColor.black2,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        )).padAll(10),
      ),
    );
  }
}
