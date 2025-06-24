import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/app_colors.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class PrayerTimesCard extends StatelessWidget {
  const PrayerTimesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.Purble2Card, AppColors.Mauve],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.RoyalBlue,
            blurRadius: 10.r,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Prayer Times', style: AppStyles.Black24SemiBold),
          SizedBox(height: 10.h),

          // Next prayer time
          Text('Next: Fajr in 17 mins', style: AppStyles.Black18BoldAmiri),

          SizedBox(height: 20.h),

          // Placeholder for prayer rows
          PrayerTimeRow(name: 'Fajr ', time: '04:12 AM', initialIsOn: true),
          Divider(color: AppColors.White, thickness: 0.5),

          PrayerTimeRow(name: 'Duhr', time: '12:05 PM', initialIsOn: false),
          Divider(color: AppColors.White, thickness: 0.5),

          PrayerTimeRow(name: 'Asr', time: '03:30 PM', initialIsOn: true),
          Divider(color: AppColors.White, thickness: 0.5),

          PrayerTimeRow(name: 'Maghrib', time: '06:47 PM', initialIsOn: false),
          Divider(color: AppColors.White, thickness: 0.5),

          PrayerTimeRow(name: 'Isha', time: '08:10 PM', initialIsOn: true),
        ],
      ),
    );
  }
}

class PrayerTimeRow extends StatefulWidget {
  final String name;
  final String time;
  final bool initialIsOn;

  const PrayerTimeRow({
    super.key,
    required this.name,
    required this.time,
    this.initialIsOn = false,
  });

  @override
  State<PrayerTimeRow> createState() => _PrayerTimeRowState();
}

class _PrayerTimeRowState extends State<PrayerTimeRow> {
  late bool isOn;

  @override
  void initState() {
    super.initState();
    isOn = widget.initialIsOn;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.name, style: AppStyles.Black16Reguler),
          Row(
            children: [
              Text(widget.time, style: AppStyles.Black16Medium),
              SizedBox(width: 8.w),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isOn = !isOn;
                  });
                },
                child: Icon(
                  isOn ? Icons.notifications_active : Icons.notifications_off,
                  color: isOn ? Colors.green : Colors.grey,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
