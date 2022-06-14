import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingUI extends StatelessWidget {
  SettingUI({Key? key}) : super(key: key);

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SettingsList(sections: [
        SettingsSection(tiles: [
          SettingsTile(
            title: const Text('Language'),
            leading: const Icon(Icons.language),
            onPressed: (BuildContext context) {},
          ),
          SettingsTile.switchTile(
              initialValue: isSwitched,
              onToggle: (value) {
                isSwitched = true;
              },
              title: const Text('Use System Theme'))
        ]),
        SettingsSection(title: Text('Privacy'), tiles: [
          SettingsTile(
            leading: Icon(Icons.lock),
            title: Text('Security'),
          ),
          SettingsTile.switchTile(
              leading: Icon(Icons.fingerprint),
              initialValue: isSwitched,
              onToggle: (value) {
                isSwitched = true;
              },
              title: const Text('Use fingerprints'))
        ])
      ]),
    );
  }
}
