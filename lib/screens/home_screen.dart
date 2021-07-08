import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_demo/change_notifiers/user_age_notifier.dart';
import 'package:providers_demo/change_notifiers/user_name_notifier.dart';
import 'package:providers_demo/screens/update_user_name_age.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UpdateUserNameAge(),
                ),
              );
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          Consumer<UserNameNotifier>(
            builder: (context, userNameNotifier, _) =>
                Text(userNameNotifier.userName),
          ),
          Consumer<UserAgeNotifier>(
            builder: (context, userAgeNotifier, _) =>
                Text(userAgeNotifier.userAge.toString() + ' Years Old'),
          ),
        ],
      ),
    );
  }
}
