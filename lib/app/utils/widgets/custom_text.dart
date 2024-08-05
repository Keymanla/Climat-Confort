import 'package:climat_confort/app/themes/app_colors.dart';
import 'package:climat_confort/app/themes/app_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
    this.text,
    this.colorText,
    this.fontWeight,
    this.fontSize,
    this.letterSpacing,
    this.textAlign,
  }) : super(key: key);
  final String? text;
  final Color? colorText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? letterSpacing;
  final TextAlign? textAlign;
  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text ?? '',
      textAlign: widget.textAlign,
      style: AppTextStyles.base.s14.roboto.copyWith(
        color: widget.colorText ?? AppColors.black,
        fontFamily: 'NunitoSans',
        fontWeight: widget.fontWeight ?? FontWeight.w500,
        fontSize: widget.fontSize,
        letterSpacing: widget.letterSpacing,
      ),
    );
  }
}
