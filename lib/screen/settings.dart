import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_a/generated/locale_keys.g.dart';
import 'package:easy_localization_a/languages/lang.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.Set.tr(),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: IconButton(
              onPressed: () {
                languages(context);
                setState(() {});
              },
              icon: const Icon(Icons.translate),
            ),
          ),
        ],
      ),
    );
  }
}
