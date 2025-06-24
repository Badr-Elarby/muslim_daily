import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/home_page/presentation/widgets/HomeHeader.dart';
import 'package:islamic_app/features/home_page/presentation/widgets/PrayerTimesCard.dart';
import 'package:islamic_app/features/home_page/presentation/widgets/QuranCard.dart';
import 'package:islamic_app/features/home_page/presentation/widgets/Welcome.dart';
import 'package:islamic_app/features/navigation/presentation/screens/main_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(height: 15),
            Welcome(),
            SizedBox(height: 24),

            LastReadCard(),
            SizedBox(height: 24),
            PrayerTimesCard(),
          ],
        ),
      ),
    );
  }
}
