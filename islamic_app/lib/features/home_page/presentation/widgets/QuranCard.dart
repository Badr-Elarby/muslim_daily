import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/app_colors.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class LastReadCard extends StatelessWidget {
  const LastReadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.Purble1Card, AppColors.Purble2Card],
          ),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.RoyalBlue,
              offset: Offset(0, 5),
              blurRadius: 10.r,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),

          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                top: 50.h,
                // right: 30.w,
                left: 185.w,
                child: Image.asset(
                  'assets/images/shadow.png',
                  width: 100.w,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/images/Quran.png',
                  width: 100.w,
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: AppColors.SemiPurble,

                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      Icons.menu_book_rounded,
                      size: 28.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Last Read", style: AppStyles.White14Medium),
                      SizedBox(height: 4.h),
                      Text("Al-Fatiha", style: AppStyles.White18SemiBold),
                      Text("Ayah No: 7", style: AppStyles.White14Medium),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
