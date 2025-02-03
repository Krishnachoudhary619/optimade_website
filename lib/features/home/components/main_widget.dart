import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:optimade_website/gen/assets.gen.dart';
import 'package:optimade_website/shared/extension/context_ext.dart';
import 'package:optimade_website/shared/extension/widget_ext.dart';
import 'package:optimade_website/shared/widgets/custom_filled_button.dart';
import 'package:optimade_website/theme/app_color.dart';
import 'package:optimade_website/theme/text_theme.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 480,
          child: Align(
              alignment: Alignment.topRight,
              child: Container(
                  child: Assets.icons.homePageMainIcon
                      .svg(width: context.widthByPercent(60)))),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Where',
                  style: AppTextTheme.base.copyWith(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: AppColor.black2),
                ),
                TextSpan(
                  text: ' Technology',
                  style: AppTextTheme.base.copyWith(
                      fontSize: 60,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary),
                ),
                TextSpan(
                  text: '\nMeets Inguenity.',
                  style: AppTextTheme.base.copyWith(
                      fontSize: 60,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black2),
                ),
              ])),
              const Gap(20),
              Text(
                'We do not just code, we conquer. Your one stop service\ncenter to manage your businesses and needs.',
                style: AppTextTheme.header.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: AppColor.black2),
              ),
              const Gap(50),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '32+',
                        style: AppTextTheme.base.copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary),
                      ),
                      Text(
                        'Successful Projects',
                        style: AppTextTheme.header.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: AppColor.black2),
                      ),
                    ],
                  ),
                  const Gap(40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '22+',
                        style: AppTextTheme.base.copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary),
                      ),
                      Text(
                        'Satisfied Clients',
                        style: AppTextTheme.header.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: AppColor.black2),
                      ),
                    ],
                  )
                ],
              ),
              const Gap(50),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                    child: CustomFilledButton(
                      title: 'Book a free call',
                      radius: 50,
                    ),
                  ),
                  const Gap(45),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'See Projects',
                            style: AppTextTheme.label16.copyWith(
                                color: AppColor.primary, fontSize: 18),
                          ),
                          const Gap(10),
                          Assets.icons.arrowIcon.svg(height: 20, width: 20)
                        ],
                      ),
                    ).padHor(20),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ).pad(right: 50, left: 70);
  }
}
