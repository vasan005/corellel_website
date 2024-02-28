import 'package:beamer/beamer.dart';
import 'package:corllel/Round_Animation.dart';
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
          child: const RoundAnimation()),
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

// class SettingsLocation extends BeamLocation<BeamState> {
//   SettingsLocation(RouteInformation routeInformation) : super(routeInformation);
//   @override
//   List<BeamPage> buildPages(BuildContext context, BeamState state) {
//     return [
//       const BeamPage(
//           key: ValueKey('Settings'),
//           child: Settings(),
//           type: BeamPageType.fadeTransition),
//       if (state.pathPatternSegments.contains('account'))
//         const BeamPage(
//           key: ValueKey('Settings-account'),
//           child: AccountSettings(),
//           type: BeamPageType.slideRightTransition,
//         ),
//       if (state.pathPatternSegments.contains('profile'))
//         const BeamPage(
//           key: ValueKey('Settings-profile'),
//           child: ProfileSettings(),
//           type: BeamPageType.slideRightTransition,
//         ),
//     ];
//   }

//   @override
//   List<Pattern> get pathPatterns =>
//       ['/settings*', '/settings/account', '/settings/profile'];
// }

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
