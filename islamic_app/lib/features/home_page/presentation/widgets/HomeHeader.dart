import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/app_colors.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Open Menu')));
                },
                icon: Icon(Icons.menu, size: 28.sp),
              ),
              SizedBox(width: 14.w),
              Text('Quran App', style: AppStyles.Purble20Bold),
            ],
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_sharp,
              size: 25.sp,
              color: AppColors.GreyFont,
            ),
          ),
        ],
      ),
    );
  }
}
