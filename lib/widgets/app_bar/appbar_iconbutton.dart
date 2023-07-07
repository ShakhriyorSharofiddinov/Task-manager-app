import 'package:flutter/material.dart';

import '../custom_icon_button.dart';
import '../custom_image_view.dart';

// ignore: must_be_immutable
class AppbarIconButton extends StatelessWidget {
  AppbarIconButton({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32,
          width: 32,
          variant: IconButtonVariant.FillGray90001,
          padding: IconButtonPadding.PaddingAll6,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
