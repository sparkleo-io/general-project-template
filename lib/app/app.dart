

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:general_project_template/routing/app_routes.dart';
import 'package:general_project_template/routing/routes.dart';
import 'package:general_project_template/utils/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VitalMonitoringSystemApp extends StatelessWidget {
  const VitalMonitoringSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
    builder: (_, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Viral Monitoring System",
          locale: const Locale('en'),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('es'), // Spanish
          ],
          theme: Themes.light,
          darkTheme: Themes.dark,
          themeMode: Themes().theme,
          initialRoute: Routes.login,
          getPages: AppRoutes.routes,
        )
    );
  }
}
