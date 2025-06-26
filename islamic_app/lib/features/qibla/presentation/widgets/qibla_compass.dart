import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class QiblaCompass extends StatefulWidget {
  const QiblaCompass({super.key});

  @override
  State<QiblaCompass> createState() => _QiblaCompassState();
}

class _QiblaCompassState extends State<QiblaCompass> {
  double _smoothedAngle = 0;
  final double _smoothingFactor = 0.1;

  double _applySmoothing(double newAngle) {
    _smoothedAngle += (newAngle - _smoothedAngle) * _smoothingFactor;
    return _smoothedAngle;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QiblahDirection>(
      stream: FlutterQiblah.qiblahStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError || !snapshot.hasData) {
          return const Center(
            child: Text(
              "Error loading Qibla direction",
              style: AppStyles.Purble18SemiBold,
            ),
          );
        }

        final qiblahDirection = snapshot.data!.qiblah;
        final smoothedAngle = _applySmoothing(-qiblahDirection * (pi / 180));

        return Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: smoothedAngle,
                child: Image.asset(
                  'assets/images/compass_with_kaaba.png',
                  width: 300.w,
                  height: 300.h,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
