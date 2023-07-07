import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.LatoRegular16:
        return TextStyle(
          color: ColorConstant.blueGray700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.LatoRegular16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.LatoRegular18:
        return TextStyle(
          color: ColorConstant.whiteA700Dd,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.LatoRegular16WhiteA700dd:
        return TextStyle(
          color: ColorConstant.whiteA700Dd,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700Dd,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray500:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray500,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillIndigo300:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray500_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray500,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.whiteA700,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillWhiteA70035:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillBluegray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray500:
        return ColorConstant.gray90001;
      case TextFormFieldVariant.FillIndigo300:
        return ColorConstant.indigo300;
      case TextFormFieldVariant.OutlineWhiteA700:
        return ColorConstant.gray90001;
      case TextFormFieldVariant.FillWhiteA70035:
        return ColorConstant.whiteA70035;
      case TextFormFieldVariant.FillBluegray900:
        return ColorConstant.blueGray900;
      default:
        return ColorConstant.gray90002;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray500:
        return true;
      case TextFormFieldVariant.FillIndigo300:
        return true;
      case TextFormFieldVariant.OutlineGray500_1:
        return false;
      case TextFormFieldVariant.OutlineWhiteA700:
        return true;
      case TextFormFieldVariant.FillWhiteA70035:
        return true;
      case TextFormFieldVariant.FillBluegray900:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT14:
        return getPadding(
          left: 12,
          top: 14,
          right: 12,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingT14_1:
        return getPadding(
          top: 14,
          right: 14,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 4,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder4,
}
enum TextFormFieldPadding {
  PaddingAll4,
  PaddingT14,
  PaddingT14_1,
  PaddingAll10,
}
enum TextFormFieldVariant {
  None,
  FillGray90002,
  OutlineGray500,
  FillIndigo300,
  OutlineGray500_1,
  OutlineWhiteA700,
  FillWhiteA70035,
  FillBluegray900,
}
enum TextFormFieldFontStyle {
  LatoBold12,
  LatoRegular16,
  LatoRegular16WhiteA700,
  LatoRegular18,
  LatoRegular16WhiteA700dd,
}
