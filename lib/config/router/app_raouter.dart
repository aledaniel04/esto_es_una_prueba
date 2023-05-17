import 'package:go_router/go_router.dart';
import 'package:esto_es_una_prueba/presentation/screen/screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PruebaScreen(),
    ),
    GoRoute(
      path: '/SQLite',
      builder: (context, state) => const PrimerSqliteScreen(),
    ),
    GoRoute(
      path: '/2SQLite',
      builder: (context, state) => const SegundoSqliteScreen(),
    ),
  ],
);
