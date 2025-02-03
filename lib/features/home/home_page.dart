import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:optimade_website/features/home/components/main_widget.dart';
import 'package:optimade_website/features/home/components/service_list_widget.dart';
import 'package:optimade_website/gen/assets.gen.dart';
import 'package:optimade_website/routes/app_router.gr.dart';
import 'package:optimade_website/shared/extension/widget_ext.dart';

import 'package:optimade_website/shared/widgets/custom_filled_button.dart';
import 'package:optimade_website/theme/app_color.dart';
import 'package:optimade_website/theme/text_theme.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.white,
            pinned: true,
            floating: true,
            toolbarHeight: 93,
            actions: [
              SizedBox(
                height: 50,
                child: CustomFilledButton(
                  title: 'Contact Us',
                  onTap: () {
                    context.pushRoute(const ContactUsRoute());
                  },
                ).pad(right: 50),
              )
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    // color: AppColor.red,
                    child: Assets.images.optimadeLogo.image(width: 220)),
                textWidget(title: 'Services ', onTap: () {}),
                textWidget(title: 'Industries', onTap: () {}),
                textWidget(title: 'Portfolio', onTap: () {}),
                textWidget(title: 'About us', onTap: () {}),
                textWidget(title: 'About us', onTap: () {}),
                textWidget(title: 'Blog', onTap: () {}),
              ],
            ).pad(left: 10),
          ),
          SliverList.list(children: const [
            Gap(60),
            MainWidget(),
            Gap(50),
            ServiceListWidget(),
          ])
        ],
      ),
    );
  }

  Widget textWidget({required String title, required VoidCallback onTap}) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
            child: Text(
          title,
          style: AppTextTheme.header.copyWith(
            color: AppColor.black2,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        )).padAll(10),
      ),
    );
  }
}
