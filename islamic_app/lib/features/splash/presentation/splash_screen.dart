import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/core/utils/app_colors.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      body: Stack(
        children: [
          Positioned(
            bottom: 115.h,
            right: 30.w,
            left: 30.w,
            top: 247.h,
            child:
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash.png'),
                      fit: BoxFit.none,
                    ),
                  ),
                ).animate().fadeIn(duration: 800.ms).scale(),
          ),
          Positioned(
            top: 86.h,
            left: 89.w,
            right: 90.w,
            bottom: 614.h,
            child: Text(
              "Quran App",
              style: AppStyles.Perble28Bold,
            ).animate().fadeIn(duration: 600.ms).slideY(begin: -0.3, end: 0),
          ),

          Positioned(
            top: 144.h,
            left: 65.w,
            child: Column(
              children: [
                    Align(alignment: Alignment.center),
                    Text("Learn Quran and", style: AppStyles.Grey18Reguler),
                    Text(
                      "Recite once everyday",
                      style: AppStyles.Grey18Reguler,
                    ),
                  ]
                  .animate(interval: 300.ms)
                  .fadeIn(duration: 600.ms)
                  .slideY(begin: 0.5, end: 0),
            ),
          ),

          Positioned(
            top: 655.h,
            bottom: 100.h,
            right: 94.w,
            left: 95.w,
            child: ElevatedButton(
                  onPressed: () {
                    print('Going to MainLayout...');
                    context.go('/main_layout');
                    print('Should have navigated.');
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.OrangeFont,
                    minimumSize: Size(185.w, 60.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                  ),
                  child: Text("Get Started", style: AppStyles.White18SemiBold),
                )
                .animate()
                .fadeIn(duration: 600.ms)
                .slideY(begin: 1, end: 0)
                .then(delay: 300.ms),
          ),
        ],
      ),
    );
  }
}
