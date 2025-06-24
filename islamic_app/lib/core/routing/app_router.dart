import 'package:go_router/go_router.dart';
import 'package:islamic_app/features/duas/presentation/screens/duas_screen.dart';
import 'package:islamic_app/features/home_page/presentation/screens/home_screen.dart';
import 'package:islamic_app/features/navigation/presentation/screens/main_layout.dart';
import 'package:islamic_app/features/prayer_times/presentation/screens/prayer_times_screen.dart';
import 'package:islamic_app/features/quran/presentation/screens/quran_screen.dart';
import 'package:islamic_app/features/splash/presentation/splash_screen.dart';
import 'package:islamic_app/features/qibla/presentation/screens/qibla_screen.dart';
import 'package:islamic_app/features/tasabeh/presentation/screens/tasabeh_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'SplashScreen',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'HomeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/quran',
      name: 'QuranScreen',
      builder: (context, state) => const QuranScreen(),
    ),
    GoRoute(
      path: '/prayer_times',
      name: 'PrayerTimesScreen',
      builder: (context, state) => const PrayerTimesScreen(),
    ),

    GoRoute(
      path: '/qibla',
      name: 'QiblaScreen',
      builder: (context, state) => const QiblaScreen(),
    ),
    GoRoute(
      path: '/daus',
      name: 'DuasScreen',
      builder: (context, state) => const DuasScreen(),
    ),

    GoRoute(
      path: '/tasabeh',
      name: 'TasabehScreen',
      builder: (context, state) => const TasabehScreen(),
    ),

    GoRoute(
      path: '/main_layout',
      name: 'MainLayout',
      builder: (context, state) => const MainLayout(),
    ),
  ],
);
