import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get outlineIndigo300 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.indigo300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillGray800 => BoxDecoration(
        color: ColorConstant.gray800,
      );
  static BoxDecoration get txtFillIndigo300 => BoxDecoration(
        color: ColorConstant.indigo300,
      );
  static BoxDecoration get fillBlack900bc => BoxDecoration(
        color: ColorConstant.black900Bc,
      );
  static BoxDecoration get fillIndigo300 => BoxDecoration(
        color: ColorConstant.indigo300,
      );
  static BoxDecoration get fillGray90002 => BoxDecoration(
        color: ColorConstant.gray90002,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineDeeppurpleA200 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.deepPurpleA200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: ColorConstant.blueGray900,
      );
  static BoxDecoration get txtFillGray90002 => BoxDecoration(
        color: ColorConstant.gray90002,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius customBorderTL4 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        4,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        4,
      ),
    ),
  );

  static BorderRadius circleBorder21 = BorderRadius.circular(
    getHorizontalSize(
      21,
    ),
  );

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius roundedBorder42 = BorderRadius.circular(
    getHorizontalSize(
      42,
    ),
  );
}



double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;


