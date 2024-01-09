import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_route/global/common/colors/app_colors.dart';

class IconButtonWidget extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final String text;
  final String? description;
  final double? fontSize;

  const IconButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.text,
    this.description,
    this.fontSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          child: Image.asset(
            icon,
            fit: BoxFit.contain,
            height: context.height,
            width: context.width,
          ),
        ),
        Flexible(
          child: AutoSizeText(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize ?? 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (description != null)
          Flexible(
            child: Text(
              description!,
              style: const TextStyle(
                fontSize: 10,
                color: AppColors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}
