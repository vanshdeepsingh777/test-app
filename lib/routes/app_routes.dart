import 'package:go_router/go_router.dart';
import 'package:my_app/core/base/base_screen.dart';
import '../presentation/pages/user_detail_page.dart';
import '../data/models/user_model.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainLayout(),
    ),
    GoRoute(
      path: '/user',
      builder: (context, state) {
        final user = state.extra as User;
        return UserDetailPage(user: user);
      },
    ),
  ],
);
