import 'package:ciociariadavisitare/src/utils/constants/margins_spacnings.dart';
import 'package:ciociariadavisitare/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.text,
      this.bgColor,
      this.textColor,
      required this.onTap,
      this.height = 46,
      this.width,
      this.loading = false,
      this.marginFromSide = false,
      this.isDisable = false,
      this.borderSide,
      this.fontSize = 14,
      super.key});

  String text;
  Color? textColor;
  Color? bgColor;
  void Function() onTap;
  final bool loading;
  double height;
  double? width;
  final bool marginFromSide;
  final bool isDisable;
  double fontSize;
  BorderSide? borderSide;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width ?? MediaQuery.of(context).size.width,
      padding: marginFromSide
          ? EdgeInsets.symmetric(horizontal: pageMarginHorizontal)
          : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppColors.customWhiteTextColor,
          shadowColor: Colors.transparent,
          side: borderSide,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: AppColors.subTitleColor,
        ),
        onPressed: isDisable
            ? null
            : () {
                HapticFeedback.lightImpact();
                if (!loading) onTap();
              },
        child: Center(
          child: Text(
            text,
            style: context.text.bodyMedium?.copyWith(
              fontSize: fontSize.sp,
              color: textColor ?? AppColors.customWhiteTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
