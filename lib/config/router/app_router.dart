import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screnn.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScrenn.name,
      builder: (context, state) => const ButtonsScrenn(),
    ),
    GoRoute(
      path: '/card',
      name: CardScrenn.name,
      builder: (context, state) => const CardScrenn(),
    ),
  ],
);
