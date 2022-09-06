import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/app_wrapper/models/tab_item.dart';
import '../../features/app_wrapper/pages/app_wrapper.dart';
import '../../features/session/pages/session_details_page.dart';
import '../../features/speakers/pages/speaker_info_page.dart';
import '../models/session_details.dart';
import '../models/speaker.dart';
import 'app_routes_names.dart';
import 'app_routes_paths.dart';

class AppRouter {
  AppRouter(WidgetRef ref) {
    mainRouter = _getMainRouter(ref);
  }

  /// This variable is used in testing to change the initial
  /// location and access some page right away.
  /// When using it with sub locations, make sure to include
  /// the paths of all the parent routes.
  @visibleForTesting
  String setInitialLocation(String location) => initialLocation = location;

  static String initialLocation = RoutePaths.app;

  late GoRouter mainRouter;

  GoRouter _getMainRouter(WidgetRef ref) => GoRouter(
        urlPathStrategy: UrlPathStrategy.path, // Removes Hash from web routes
        initialLocation: initialLocation,
        debugLogDiagnostics: true,
        // redirect: (state) {
        //            return null;
        // },
        routes: [
          GoRoute(
            path: '/',
            redirect: (state) {
              final tabId = state.params['tab'];
              return '/app/${tabId ?? TabItemId.agenda.name}';
            },
          ),
          GoRoute(
            path: '/app/:tab',
            name: RouteNames.home,
            builder: (context, state) {
              final tabId = state.params['tab'];
              final tabItem = TabItemId.values.firstWhere(
                (tabItem) => tabItem == TabItemId.values.byName(tabId!),
                orElse: (() => throw Exception('Tab not found: $tabId')),
              );

              return AppWrapper(key: state.pageKey, initialTab: tabItem);
            },
            routes: [
              GoRoute(
                path: RoutePaths.session,
                name: RouteNames.session,
                builder: (context, state) => SessionDetailsPage(
                  session: (state.extra as SessionDetails).session,
                  speakers: [...(state.extra as SessionDetails).speakers],
                ),
              ),
              GoRoute(
                path: RoutePaths.speaker,
                name: RouteNames.speaker,
                builder: (context, state) => SpeakerInfoPage(
                  speaker: state.extra as Speaker,
                ),
              ),
              GoRoute(
                path: RoutePaths.sponsor,
                name: RouteNames.sponsor,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
              GoRoute(
                path: RoutePaths.notifications,
                name: RouteNames.notifications,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
              GoRoute(
                path: RoutePaths.codeOfConduct,
                name: RouteNames.codeOfConduct,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
              GoRoute(
                path: RoutePaths.games,
                name: RouteNames.games,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
              GoRoute(
                path: RoutePaths.credit,
                name: RouteNames.credit,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
              GoRoute(
                path: RoutePaths.activites,
                name: RouteNames.activites,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
              GoRoute(
                path: RoutePaths.aboutUs,
                name: RouteNames.aboutUs,
                builder: (context, state) => const Scaffold(
                  body: Center(
                    child: Text(RouteNames.sponsor),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
