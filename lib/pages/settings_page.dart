import 'package:flutter/material.dart';
import 'package:portfolio_5499126/pages/summary_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _newsletterSubscription = false;
  bool _pushNotifications = true;
  bool _darkMode = false;
  bool _offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'App Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            const Text(
              'Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            CheckboxListTile(
              title: const Text('Subscribe to Newsletter'),
              subtitle: const Text('Get updates about new features'),
              value: _newsletterSubscription,
              onChanged: (bool? value) {
                setState(() {
                  _newsletterSubscription = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Push Notifications'),
              subtitle: const Text('Receive push notifications'),
              value: _pushNotifications,
              onChanged: (bool? value) {
                setState(() {
                  _pushNotifications = value ?? false;
                });
              },
            ),

            const SizedBox(height: 20),
            const Text(
              'App Preferences',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            SwitchListTile(
              title: const Text('Dark Mode'),
              subtitle: const Text('Use dark theme'),
              value: _darkMode,
              onChanged: (bool value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),

            SwitchListTile(
              title: const Text('Offline Mode'),
              subtitle: const Text('Work without internet connection'),
              value: _offlineMode,
              onChanged: (bool value) {
                setState(() {
                  _offlineMode = value;
                });
              },
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Current Settings Summary:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Newsletter: ${_newsletterSubscription ? "Enabled" : "Disabled"}',
                  ),
                  Text(
                    'Push Notifications: ${_pushNotifications ? "Enabled" : "Disabled"}',
                  ),
                  Text('Dark Mode: ${_darkMode ? "Enabled" : "Disabled"}'),
                  Text(
                    'Offline Mode: ${_offlineMode ? "Enabled" : "Disabled"}',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => SummaryPage(
                            settingsData: {
                              'newsletter': _newsletterSubscription,
                              'pushNotifications': _pushNotifications,
                              'darkMode': _darkMode,
                              'offlineMode': _offlineMode,
                            },
                          ),
                    ),
                  );
                },
                child: const Text('Go to Summary'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
