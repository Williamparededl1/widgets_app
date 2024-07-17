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
    GoRoute(
      path: '/progress',
      name: ProgressScrenn.name,
      builder: (context, state) => const ProgressScrenn(),
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScrenn.name,
      builder: (context, state) => const SnackbarScrenn(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/uiControl',
      name: UiControlsScrenn.name,
      builder: (context, state) => const UiControlsScrenn(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
    GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (context, state) => const CounterScreen(),
    ),
  ],
);
