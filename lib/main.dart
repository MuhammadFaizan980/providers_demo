import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_demo/change_notifiers/user_age_notifier.dart';
import 'package:providers_demo/change_notifiers/user_name_notifier.dart';
import 'package:providers_demo/screens/home_screen.dart';

main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => UserNameNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => UserAgeNotifier(),
          ),
        ],
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );
