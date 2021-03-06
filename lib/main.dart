import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/auth/services/auth_service.dart';
import 'app/routes/app_pages.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: primaryBlack,
        ).copyWith(
          secondary: Colors.white,
        ),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      initialBinding: BindingsBuilder(
        () {
          Get.put(AuthService());
        },
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
