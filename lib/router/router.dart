import 'package:auto_route/annotations.dart';

import '../pages/first.page.dart';
import '../pages/second.page.dart';
import '../pages/third.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true),
    AutoRoute(page: SecondPage),
    AutoRoute(page: ThirdPage),
  ],
)
class $AppRouter {}
