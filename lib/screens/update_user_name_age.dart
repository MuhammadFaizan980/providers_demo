import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers_demo/change_notifiers/user_age_notifier.dart';
import 'package:providers_demo/change_notifiers/user_name_notifier.dart';

class UpdateUserNameAge extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update User Name/Age'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: 'Update Name....',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              if (_nameController.text.isEmpty) return;
              await Provider.of<UserNameNotifier>(context, listen: false)
                  .changeUserName(_nameController.text);
              Navigator.pop(context);
            },
            child: const Text('Update Name'),
          ),
          const SizedBox(
            height: 32,
          ),
          TextField(
            controller: _ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Update Age....',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () async {
              if (_ageController.text.isEmpty) return;
              await Provider.of<UserAgeNotifier>(context, listen: false)
                  .updateUserAge(int.parse(_ageController.text));
              Navigator.pop(context);
            },
            child: const Text('Update Age'),
          ),
        ],
      ),
    );
  }
}
