import 'package:ecom2/core/router/router.dart';
import 'package:ecom2/features/auth/providers/auth_provider.dart';
import 'package:ecom2/features/onboarding/providers/onboarding_provider.dart';
import 'package:ecom2/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        routerConfig: CustomRoutes.router,
      ),
    );
  }
}
