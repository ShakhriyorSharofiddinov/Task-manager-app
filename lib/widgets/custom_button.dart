import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT14:
        return getPadding(
          top: 14,
          right: 14,
          bottom: 14,
        );
      case ButtonPadding.PaddingT8:
        return getPadding(
          left: 8,
          top: 8,
          bottom: 8,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDeeppurpleA200:
        return ColorConstant.deepPurpleA200;
      case ButtonVariant.FillIndigo3007f:
        return ColorConstant.indigo3007f;
      case ButtonVariant.FillWhiteA70035:
        return ColorConstant.whiteA70035;
      case ButtonVariant.FillIndigoA10001:
        return ColorConstant.indigoA10001;
      case ButtonVariant.FillRedA100:
        return ColorConstant.redA100;
      case ButtonVariant.FillOrange200:
        return ColorConstant.orange200;
      case ButtonVariant.FillGray90003:
        return ColorConstant.gray90003;
      case ButtonVariant.FillGray90004:
        return ColorConstant.gray90004;
      case ButtonVariant.FillGray90005:
        return ColorConstant.gray90005;
      case ButtonVariant.FillBluegray900:
        return ColorConstant.blueGray900;
      case ButtonVariant.OutlineIndigoA100:
      case ButtonVariant.OutlineDeeppurpleA200:
      case ButtonVariant.OutlineIndigo300:
      case ButtonVariant.OutlineGray500:
        return null;
      default:
        return ColorConstant.indigo300;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA100:
        return BorderSide(
          color: ColorConstant.indigoA100,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineDeeppurpleA200:
        return BorderSide(
          color: ColorConstant.deepPurpleA200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigo300:
        return BorderSide(
          color: ColorConstant.indigo300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray500:
        return BorderSide(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.FillIndigo300:
      case ButtonVariant.FillDeeppurpleA200:
      case ButtonVariant.FillIndigo3007f:
      case ButtonVariant.FillWhiteA70035:
      case ButtonVariant.FillIndigoA10001:
      case ButtonVariant.FillRedA100:
      case ButtonVariant.FillOrange200:
      case ButtonVariant.FillGray90003:
      case ButtonVariant.FillGray90004:
      case ButtonVariant.FillGray90005:
      case ButtonVariant.FillBluegray900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.LatoRegular16WhiteA7007f:
        return TextStyle(
          color: ColorConstant.whiteA7007f,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.LatoRegular16WhiteA700dd:
        return TextStyle(
          color: ColorConstant.whiteA700Dd,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.LatoRegular12:
        return TextStyle(
          color: ColorConstant.whiteA700Dd,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.LatoRegular12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.LatoRegular12Gray200:
        return TextStyle(
          color: ColorConstant.gray200,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
}
enum ButtonPadding {
  PaddingAll14,
  PaddingT14,
  PaddingT8,
  PaddingAll11,
  PaddingT7,
  PaddingAll19,
}
enum ButtonVariant {
  FillIndigo300,
  FillDeeppurpleA200,
  OutlineIndigoA100,
  FillIndigo3007f,
  OutlineDeeppurpleA200,
  FillWhiteA70035,
  FillIndigoA10001,
  OutlineIndigo300,
  FillRedA100,
  FillOrange200,
  OutlineGray500,
  FillGray90003,
  FillGray90004,
  FillGray90005,
  FillBluegray900,
}
enum ButtonFontStyle {
  LatoRegular16,
  LatoRegular16WhiteA7007f,
  LatoRegular16WhiteA700dd,
  LatoRegular12,
  LatoRegular12WhiteA700,
  LatoRegular12Gray200,
}
