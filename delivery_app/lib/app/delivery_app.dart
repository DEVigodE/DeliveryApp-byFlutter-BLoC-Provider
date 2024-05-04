import 'package:flutter/material.dart';

import 'core/global/global_context.dart';
import 'core/provider/application_binding.dart';
import 'core/ui/theme/theme_config.dart';
import 'pages/home/home_router.dart';
import 'pages/splash/splash_pages.dart';

class DeliveryApp extends StatelessWidget {
  DeliveryApp({super.key}) {
    GlobalContext.instance.navigatorKey = _navigatorKey;
  }

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPages(),
          '/home': (context) => HomeRouter.page,
        },
        navigatorKey: _navigatorKey,
      ),
    );
  }
}
