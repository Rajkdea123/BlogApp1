import 'package:blogapplication/resources/colors/app_colors.dart';
import 'package:blogapplication/resources/styles/app_typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  final String rating;
  final String time;
  final String views;

  const CustomRow({
    super.key,
    required this.rating,
    required this.time,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: AppColors.kYellowColor, size: 25),
        SizedBox(width: 5.w),
        Expanded(
          child: Text(
            rating,
            style:
                AppTypography.kBold14.copyWith(color: AppColors.kLightGreyColor),
          ),
        ),
        SizedBox(width: 20.w),
        const Icon(
          Icons.access_time,
          color: AppColors.kLightGreyColor,
          size: 25,
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Text(
            time,
            style:
                AppTypography.kBold14.copyWith(color: AppColors.kLightGreyColor),
          ),
        ),
        SizedBox(width: 20.w),
        const Icon(Icons.remove_red_eye_outlined,
            color: AppColors.kLightGreyColor, size: 25),
        SizedBox(width: 5.w),
        Expanded(
          child: Text(
            views,
            style:
                AppTypography.kBold14.copyWith(color: AppColors.kLightGreyColor),
          ),
        )
      ],
    );
  }
}
