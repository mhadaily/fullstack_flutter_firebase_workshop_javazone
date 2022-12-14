import 'package:flutter_vikings/core/core.dart';

import '../models/drawer_item.dart';
import '../models/tab_item.dart';

List<DrawerItem> drawerItems = [
  const DrawerItem(
    id: DrawerItemId.myPage,
    title: 'My Page',
    icon: AppIcons.myPages,
    route: 'route',
    tabItemId: TabItemId.myAgenda,
  ),
  const DrawerItem(
    id: DrawerItemId.sponsors,
    title: 'Sponsors',
    icon: AppIcons.sponsors,
    route: 'route',
    tabItemId: TabItemId.sponsors,
  ),
  const DrawerItem(
    id: DrawerItemId.codeOfConduct,
    title: 'Code of conduct',
    icon: AppIcons.codeOfConduct,
    route: RouteNames.codeOfConduct,
  ),
  const DrawerItem(
    id: DrawerItemId.games,
    title: 'Games',
    icon: AppIcons.games,
    route: 'games',
  ),
  const DrawerItem(
    id: DrawerItemId.aboutUs,
    title: 'About us',
    icon: AppIcons.aboutUs,
    route: RouteNames.aboutUs,
  ),
  const DrawerItem(
    id: DrawerItemId.credit,
    title: 'Credit',
    icon: AppIcons.sendFeedback,
    route: RouteNames.credit,
  ),
];
