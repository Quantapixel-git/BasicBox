import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/auth/screens/login_screen.dart';
import 'package:ecom2/features/auth/screens/register_screen.dart';
import 'package:ecom2/features/auth/screens/update_profile_page.dart';
import 'package:ecom2/features/auth/screens/verification_screen.dart';
import 'package:ecom2/features/events/screens/events_screen.dart';
import 'package:ecom2/features/news/screens/news_screen.dart';
import 'package:ecom2/features/onboarding/screens/onboard_screen.dart';
import 'package:ecom2/features/products/screens/product_screen.dart';
import 'package:ecom2/features/search/search_screen.dart';
import 'package:ecom2/screens/bottom_nav_layout.dart';
import 'package:go_router/go_router.dart';

class CustomRoutes {
  static final router = GoRouter(
    initialLocation: RouteName.onboard,
    routes: [
      GoRoute(
        path: RouteName.rootLayout,
        builder: (context, state) => const BottomNavLayout(),
        routes: [
          GoRoute(
            path: RouteName.product,
            builder: (context, state) => const ProductScreen(),
          ),
          GoRoute(
            path: RouteName.search,
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: RouteName.news,
            builder: (context, state) => const NewsScreen(),
            routes: [
              GoRoute(
                path: RouteName.events,
                builder: (context, state) => const EventsScreen(),
              ),
            ],
          ),
          GoRoute(
            path: RouteName.events,
            builder: (context, state) => const EventsScreen(),
          ),
        ],
      ),
      GoRoute(
        path: RouteName.onboard,
        builder: (context, state) => const OnboardScreen(),
      ),
      GoRoute(
          path: RouteName.login,
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: RouteName.verification,
              builder: (context, state) => VerificationScreen(),
              routes: [
                GoRoute(
                  path: RouteName.updateProfile,
                  builder: (context, state) => const UpdateProfilePage(),
                )
              ],
            )
          ]),
      GoRoute(
        path: RouteName.regoster,
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
