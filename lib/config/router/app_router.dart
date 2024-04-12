import 'package:flutterforms/presentation/home_Screen/homeScreen.dart';
import 'package:flutterforms/presentation/register_Screen/registerScreen.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/new-user',
    builder: (context, state) => const RegisterScreen(),
  ),
]);

