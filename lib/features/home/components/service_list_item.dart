import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:optimade_website/gen/assets.gen.dart';
import 'package:optimade_website/shared/extension/widget_ext.dart';
import 'package:optimade_website/theme/app_color.dart';
import 'package:optimade_website/theme/text_theme.dart';

class ServiceListItem extends StatelessWidget {
  const ServiceListItem(
      {super.key,
      required this.imageWidget,
      required this.title,
      required this.desc,
      required this.readMoreCallback,
      this.oddItem = true});
  final Widget imageWidget;
  final String title;
  final String desc;
  final VoidCallback readMoreCallback;
  final bool oddItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (oddItem) getImageWidget() else getContentWidget(),
        const Gap(30),
        if (oddItem) getContentWidget() else getImageWidget(),
      ],
    );
  }

  Widget getImageWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(height: 250, child: imageWidget),
    );
  }

  Widget getContentWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextTheme.semiBold30
                .copyWith(color: AppColor.primary, fontSize: 26),
          ),
          const Gap(20),
          Text(
            desc,
            style: AppTextTheme.medium18
                .copyWith(color: AppColor.black2, fontSize: 22),
          ),
          const Gap(20),
          InkWell(
            onTap: readMoreCallback,
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Read More',
                    style: AppTextTheme.label16
                        .copyWith(color: AppColor.primary, fontSize: 18),
                  ),
                  const Gap(10),
                  Assets.icons.arrowIcon.svg()
                ],
              ),
            ).pad(right: 20),
          )
        ],
      ),
    );
  }
}
