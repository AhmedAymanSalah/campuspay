
import '../../features/services/ui/services_list_view.dart';
import 'routes.dart';
import '../../features/attention/ui/attention_Screen.dart';
import '../../features/home/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';
import '../../features/splash/ui/custom_splash_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Extract the route name from the settings.
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.myCustomSplashScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.attentionPage:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const AttentionScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
        
      case Routes.loginScreen:
        // Return a MaterialPageRoute for the LoginScreen route.
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.homeScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.servicesScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) =>  ServicesScreen());
      // default:
      //   // If the requested route is not found, return a MaterialPageRoute for an unknown screen.
      //   return MaterialPageRoute(
      //     builder: (_) => Scaffold(
      //       body: Center(
      //         child: Text('No route defined for ${settings.name}'),
      //       ),
      //     ),
      //   );
    }
    return null;
  }
}
