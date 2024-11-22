import 'package:get/get.dart';
import 'package:general_project_template/features/intro/views/splash_views.dart';
import 'package:general_project_template/routing/routes.dart';


class AppRoutes {
  static const initial = Routes.splash;

  static final routes = [
      GetPage(
        name: Routes.splash,
        page: () => const SplashViews(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500),
      ),
  ];
}

