import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/app_styles.dart';
import 'package:islamic_app/features/quran/presentation/widgets/quran_surah_list.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quran", style: AppStyles.Purble18SemiBold),
        centerTitle: true,
      ),
      body: QuranSurahList(),
    );
  }
}
