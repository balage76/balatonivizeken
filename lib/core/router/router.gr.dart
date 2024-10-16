// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: LoginScreen(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ForgotPasswordScreen(key: args.key),
      );
    },
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    BoatRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BoatScreen(),
      );
    },
    MapRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          RegisterRoute.name,
          path: '/register',
        ),
        RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot_password',
        ),
        RouteConfig(
          DashboardRoute.name,
          path: '/dashboard',
          children: [
            RouteConfig(
              BoatRoute.name,
              path: 'boat',
              parent: DashboardRoute.name,
            ),
            RouteConfig(
              MapRoute.name,
              path: 'map',
              parent: DashboardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key})
      : super(
          LoginRoute.name,
          path: '/login',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({Key? key})
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot_password',
          args: ForgotPasswordRouteArgs(key: key),
        );

  static const String name = 'ForgotPasswordRoute';
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [BoatScreen]
class BoatRoute extends PageRouteInfo<void> {
  const BoatRoute()
      : super(
          BoatRoute.name,
          path: 'boat',
        );

  static const String name = 'BoatRoute';
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute()
      : super(
          MapRoute.name,
          path: 'map',
        );

  static const String name = 'MapRoute';
}
