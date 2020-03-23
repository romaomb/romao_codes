import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:romao_codes/localizations/app_localizations.dart';
import 'package:romao_codes/resources/routes.dart' as Routes;
import 'package:romao_codes/resources/constants.dart' as Constants;
import 'package:romao_codes/scenes/home/home_route.dart';

class RomaoApp extends StatefulWidget {
  @override
  _RomaoAppState createState() => _RomaoAppState();
}

class _RomaoAppState extends State<RomaoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Constants.supportedLanguages.map((language) {
        return Locale(language);
      }),
      initialRoute: Routes.home,
      routes: {
        Routes.home: (_) => HomeRoute(),
      },
    );
  }
}
