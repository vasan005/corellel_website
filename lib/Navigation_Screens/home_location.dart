import 'package:beamer/beamer.dart';
import 'package:corllel/Navigation_Screens/landing_screen.dart';
import 'package:corllel/Screens/Home_Screen.dart';
import 'package:corllel/Screens/Contact_Screen.dart';
import 'package:corllel/Screens/MetaWorld_Screen.dart';
import 'package:corllel/Screens/Gaming_Screen.dart';
import 'package:flutter/material.dart';

class HomeLocation extends BeamLocation<BeamState> {
  HomeLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(
          key: ValueKey('home-${DateTime.now()}'),
          child: const LandingScreen()),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/*'];
}

class DashboardLocation extends BeamLocation<BeamState> {
  DashboardLocation(RouteInformation routeInformation)
      : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
          key: ValueKey('Home'),
          child: HomePageScreen(),
          type: BeamPageType.fadeTransition),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/home*'];
}

class ProfileLocation extends BeamLocation<BeamState> {
  ProfileLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('Gaming'),
        child: GamingScreen(),
        type: BeamPageType.fadeTransition,
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/gaming*'];
}

class NotificationLocation extends BeamLocation<BeamState> {
  NotificationLocation(RouteInformation routeInformation)
      : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('MetaWorld'),
        child: MetaWorldScreen(),
        type: BeamPageType.fadeTransition,
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/MetaWorld*'];
}

class AboutLocation extends BeamLocation<BeamState> {
  AboutLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('Contact'),
        child: ContactScreen(),
        type: BeamPageType.fadeTransition,
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/Contact*'];
}
