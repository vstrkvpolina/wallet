import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet/app/routes/app_pages.dart';
// import 'package:wallet/app/routes/pages.dart';

// import 'package:wallet/app/services/auth_service.dart';
import 'package:wallet/app/modules/home/widgets/services/storage_service.dart';
import 'package:wallet/app/modules/home/widgets/services/network_service.dart';


void main() {
  runApp(
    GetMaterialApp(
        title: "wallet",
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.PAGES,
        getPages: AppPages.routes,
    )
  );
}

// Future<void> initService() async {
//   await Get.putAsync(() => StorageService().init());
//   await Get.putAsync(() => AuthService().init());
//   await Get.putAsync(() => NetworkService().init());
// }
