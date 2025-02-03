import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:optimade_website/features/home/components/service_list_item.dart';
import 'package:optimade_website/gen/assets.gen.dart';
import 'package:optimade_website/shared/extension/widget_ext.dart';
import 'package:optimade_website/theme/app_color.dart';
import 'package:optimade_website/theme/text_theme.dart';

class ServiceListWidget extends StatelessWidget {
  const ServiceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Our service list',
          style: AppTextTheme.semiBold30
              .copyWith(fontSize: 30, color: AppColor.primary),
        ),
        Text(
          'What we are offering',
          style: AppTextTheme.semiBold30
              .copyWith(fontSize: 44, color: AppColor.black2),
        ),
        const Gap(40),
        ServiceListItem(
          imageWidget: Assets.images.webDev.image(fit: BoxFit.cover),
          title: 'Website Development',
          desc:
              'Transforming your digital vision into a captivating online presence with expert website development',
          readMoreCallback: () {},
        ),
        const Gap(20),
        ServiceListItem(
          imageWidget: Assets.images.appDev.image(fit: BoxFit.cover),
          title: 'Mobile App Development',
          desc:
              'Transforming ideas into seamless user experiences through innovative mobile app development.',
          readMoreCallback: () {},
          oddItem: false,
        ),
        const Gap(20),
        ServiceListItem(
          imageWidget: Assets.images.iotDev.image(fit: BoxFit.cover),
          title: 'IoT Solutions & Integration',
          desc:
              'Seamlessly integrating IoT technology into your ecosystem to enhance efficiency and connectivity.',
          readMoreCallback: () {},
          oddItem: false,
        ),
      ],
    ).pad(right: 50, left: 70);
  }
}
