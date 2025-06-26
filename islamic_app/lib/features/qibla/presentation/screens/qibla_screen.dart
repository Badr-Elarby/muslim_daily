import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:islamic_app/core/utils/app_styles.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:islamic_app/features/qibla/presentation/widgets/qibla_compass.dart';

class QiblaScreen extends StatefulWidget {
  const QiblaScreen({super.key});

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      setState(() {}); // Trigger rebuild after permission granted
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qibla Direction", style: AppStyles.Purble18SemiBold),
        centerTitle: true,
      ),
      body: FutureBuilder<LocationStatus>(
        future: FlutterQiblah.checkLocationStatus(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final status = snapshot.data!;
          if (status.enabled) {
            return const QiblaCompass(); // your compass widget
          } else {
            return const Center(
              child: Text(
                "Please enable location services to use this feature.",
                style: AppStyles.Purble20Bold,
              ),
            );
          }
        },
      ),
    );
  }
}
