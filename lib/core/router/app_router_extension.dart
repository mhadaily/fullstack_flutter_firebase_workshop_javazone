import 'package:flutter/material.dart';
import 'package:flutter_vikings/core/core.dart';
import 'package:go_router/go_router.dart';

import '../../features/app_wrapper/models/tab_item.dart';

extension AppRouterExtension on BuildContext {
  void goHome({TabItemId? tab}) {
    GoRouter.of(this).goNamed(
      RouteNames.home,
      params: {'tab': tab?.name ?? TabItemId.agenda.name},
    );
  }

  void pop() {
    GoRouter.of(this).pop();
  }

  /// Pushes a session page to the view.
  ///
  /// If [tab] was passed, the route location will have the tab name,
  /// e.g. `/app/speakers/session?id=123`. [tab] is optional and it
  /// defaults to [TabItemId.agenda].
  void pushSession(
    SessionDetails session, {
    TabItemId? tab,
  }) {
    GoRouter.of(this).pushNamed(
      RouteNames.session,
      extra: session,
      params: {
        'tab': tab?.name ?? TabItemId.agenda.name,
      },
    );
  }

  void pushSpeaker(
    Speaker speaker, {
    TabItemId? tab,
  }) {
    GoRouter.of(this).pushNamed(
      RouteNames.speaker,
      extra: speaker,
      params: {
        'tab': tab?.name ?? TabItemId.agenda.name,
      },
    );
  }
}

extension ContainsRouteExtension on BuildContext {
  bool inRoute(String routeName) =>
      canPop() ? GoRouter.of(this).location.contains(routeName) : false;
}
