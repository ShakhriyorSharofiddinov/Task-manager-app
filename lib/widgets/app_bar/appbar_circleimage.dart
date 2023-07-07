import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../custom_image_view.dart';

class AppbarCircleImage extends StatelessWidget {
  AppbarCircleImage({
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
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder21,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(
            42,
          ),
          width: getSize(
            42,
          ),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              21,
            ),
          ),
        ),
      ),
    );
  }
}
