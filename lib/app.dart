import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vikings/core/core.dart';

class FlutterVikingsApp extends ConsumerStatefulWidget {
  const FlutterVikingsApp({super.key});

  @override
  ConsumerState<FlutterVikingsApp> createState() => _FlutterVikingsAppState();
}

class _FlutterVikingsAppState extends ConsumerState<FlutterVikingsApp> {
  late AppRouter appRouter;

  @override
  void initState() {
    appRouter = AppRouter(ref);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.wait([
        precacheImage(
          Image.asset(AppImages.logo).image,
          context,
        ),
        precacheImage(
          Image.asset('assets/images/bottom_navigation_bar_blur.png').image,
          context,
        ),
        precachePicture(
          ExactAssetPicture(SvgPicture.svgStringDecoderBuilder,
              'assets/images/bottom_app_bar_shape.svg'),
          context,
        ),
      ]);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Vikings',
      routerDelegate: appRouter.mainRouter.routerDelegate,
      routeInformationParser: appRouter.mainRouter.routeInformationParser,
      routeInformationProvider: appRouter.mainRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: const AppTheme(ThemeType.light).getTheme(),
      darkTheme: const AppTheme(ThemeType.dark).getTheme(),
      themeMode: ref.watch(themeSwitcher),
    );
  }
}
