import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/duas/presentation/screens/duas_screen.dart';
import 'package:islamic_app/features/home_page/presentation/screens/home_screen.dart';
import 'package:islamic_app/features/prayer_times/presentation/screens/prayer_times_screen.dart';
import 'package:islamic_app/features/qibla/presentation/screens/qibla_screen.dart';
import 'package:islamic_app/features/quran/presentation/screens/quran_screen.dart';
import 'package:islamic_app/features/tasabeh/presentation/screens/tasabeh_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    QuranScreen(),
    QiblaScreen(),
    PrayerTimesScreen(),
    DuasScreen(),
    TasabehScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _currentIndex < _screens.length
              ? _screens[_currentIndex]
              : _screens[0],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Quran"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Qibla"),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: "Prayer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: "Dua",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volunteer_activism),
            label: "Tasabeh",
          ),
        ],
      ),
    );
  }
}
