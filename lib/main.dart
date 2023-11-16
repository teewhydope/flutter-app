import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterassignment/main.config.dart';
import 'package:flutterassignment/ui/screen/home/homescreen.dart';
import 'package:flutterassignment/ui/themes/colors.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: 'initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies() => initGetIt(locator);

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              //primarySwatch: Colors.blue,
              primaryColor: primaryColor,
              colorScheme:
                  const ColorScheme.light().copyWith(primary: primaryColor),
            ),
            home: const HomePage(title: 'Flutter Gigabank assignment'),
          );
        });
  }
}
