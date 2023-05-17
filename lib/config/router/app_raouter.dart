import 'package:go_router/go_router.dart';
import 'package:esto_es_una_prueba/presentation/screen/screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      name: PruebaScreen.name,
      builder: (context, state) => const PruebaScreen(),
    ),
    GoRoute(
      path: '/SQLite',
      name: PrimerSqliteScreen.name,
      builder: (context, state) => const PrimerSqliteScreen(),
    ),
    GoRoute(
      path: '/2SQLite',
      name: SegundoSqliteScreen.name,
      builder: (context, state) => const SegundoSqliteScreen(),
    ),
  ],
);
