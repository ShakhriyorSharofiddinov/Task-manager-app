import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/color_constant.dart';

import '../core/utils/size_utils.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillLightgreenA100:
        return ColorConstant.lightGreenA100;
      case IconButtonVariant.FillDeeporangeA100:
        return ColorConstant.deepOrangeA100;
      case IconButtonVariant.FillCyanA100:
        return ColorConstant.cyanA100;
      case IconButtonVariant.FillTealA200:
        return ColorConstant.tealA200;
      case IconButtonVariant.FillIndigoA10001:
        return ColorConstant.indigoA10001;
      case IconButtonVariant.FillPurpleA100:
        return ColorConstant.purpleA100;
      case IconButtonVariant.FillPurpleA10001:
        return ColorConstant.purpleA10001;
      case IconButtonVariant.FillGreenA200:
        return ColorConstant.greenA200;
      case IconButtonVariant.FillLightblue200:
        return ColorConstant.lightBlue200;
      case IconButtonVariant.FillOrange200:
        return ColorConstant.orange200;
      case IconButtonVariant.FillTealA20001:
        return ColorConstant.tealA20001;
      case IconButtonVariant.FillLime600:
        return ColorConstant.lime600;
      case IconButtonVariant.FillGray90001:
        return ColorConstant.gray90001;
      case IconButtonVariant.FillRedA100:
        return ColorConstant.redA100;
      default:
        return ColorConstant.indigo300;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case IconButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  CircleBorder32,
  RoundedBorder4,
  CircleBorder18,
}
enum IconButtonPadding {
  PaddingAll16,
  PaddingAll6,
}
enum IconButtonVariant {
  FillIndigo300,
  FillLightgreenA100,
  FillDeeporangeA100,
  FillCyanA100,
  FillTealA200,
  FillIndigoA10001,
  FillPurpleA100,
  FillPurpleA10001,
  FillGreenA200,
  FillLightblue200,
  FillOrange200,
  FillTealA20001,
  FillLime600,
  FillGray90001,
  FillRedA100,
}
