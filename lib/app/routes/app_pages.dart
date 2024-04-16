import 'package:get/get.dart';

import '../modules/pages/bindings/pages_binding.dart';
import '../modules/pages/views/pages_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PAGES;

  static final routes = [
    GetPage(
      name: _Paths.PAGES,
      page: () => const PagesView(),
      binding: PagesBinding(),
    ),
    GetPage(
      name: Routes.PAGES,
      page: () => const PagesView(),
      binding: PagesBinding(),
    ),
    GetPage(
      name: Routes.PAGES,
      page: () => const PagesView(),
      binding: PagesBinding(),
    ),
  ];
}
