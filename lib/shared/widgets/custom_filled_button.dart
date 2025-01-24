import 'package:flutter/material.dart';
import 'package:optimade_website/theme/app_color.dart';
import 'package:optimade_website/theme/text_theme.dart';

class CustomFilledButton extends StatefulWidget {
  const CustomFilledButton(
      {super.key,
      required this.title,
      this.onTap,
      this.borderRadius,
      this.radius,
      this.size,
      this.color,
      this.textColor,
      this.loading,
      this.prefixIcon});

  factory CustomFilledButton.secondary({
    double? radius,
    required String title,
    required VoidCallback? onTap,
    BorderRadius? borderRadius,
    final Size? size,
  }) =>
      CustomFilledButton(
        title: title,
        size: size,
        radius: radius,
        borderRadius: borderRadius,
        onTap: onTap,
        textColor: AppColor.primary,
        color: AppColor.primary.withOpacity(0.12),
      );

  final String title;
  final double? radius;
  final VoidCallback? onTap;
  final Size? size;
  final Color? color;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;
  final bool? loading;
  final Widget? prefixIcon;

  @override
  State<CustomFilledButton> createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ElevatedButton(
        onPressed: () {
          if (widget.loading == true) {
            return;
          }
          widget.onTap?.call();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isHovered ? Colors.white : (widget.color ?? AppColor.darkBlue),
          // shadowColor: widget.color,
          foregroundColor: AppColor.white,
          // surfaceTintColor: widget.color,
          side: isHovered
              ? BorderSide(
                  color: widget.color ?? AppColor.darkBlue,
                  width: 2,
                )
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: widget.borderRadius ??
                BorderRadius.all(Radius.circular(widget.radius ?? 10)),
          ),
          elevation: 0,
          fixedSize: widget.size ?? const Size.fromHeight(62),
        ),
        child: (widget.loading == true)
            ? const CircularProgressIndicator(
                color: AppColor.white,
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.prefixIcon ?? const SizedBox(),
                  Text(
                    widget.title,
                    style: AppTextTheme.label.copyWith(
                      color: isHovered
                          ? (widget.color ?? AppColor.darkBlue)
                          : (widget.textColor ?? Colors.white),
                      letterSpacing: 1.2,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
