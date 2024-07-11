import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screnn.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScrenn(),
    ),
    GoRoute(
      path: '/card',
      builder: (context, state) => const CardScrenn(),
    ),
  ],
);
