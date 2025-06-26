import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class QuranSurahList extends StatelessWidget {
  const QuranSurahList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search by Surah, Juz, or Page...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),

        // List of Surahs
        Expanded(
          child: ListView.separated(
            itemCount: 10, // Temporary list of 10 surahs
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(
                  'Surah ${index + 1}',
                  style: AppStyles.Black16Reguler,
                ),
                subtitle: Text(
                  'Juz ${(index ~/ 2) + 1} - Page ${(index + 1) * 2}',
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // TODO: Navigate to Quran reading screen
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
