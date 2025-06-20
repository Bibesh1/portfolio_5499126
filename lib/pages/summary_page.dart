import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final double? sliderValue;
  final Map<String, String>? profileData;
  final Map<String, bool>? settingsData;

  const SummaryPage({
    super.key,
    this.sliderValue,
    this.profileData,
    this.settingsData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'App Summary',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            Expanded(
              child: ListView(
                children: [
                  _buildSummaryCard(
                    'Profile Information',
                    Icons.person,
                    profileData != null
                        ? [
                          'Name: ${profileData!['name'] ?? 'Not set'}',
                          'Email: ${profileData!['email'] ?? 'Not set'}',
                          'About: ${profileData!['about'] ?? 'Not set'}',
                        ]
                        : ['No profile data available'],
                  ),

                  const SizedBox(height: 16),

                  _buildSummaryCard(
                    'Slider Value',
                    Icons.tune,
                    sliderValue != null
                        ? [
                          'Current Value: ${sliderValue!.round()}',
                          'Progress: ${(sliderValue! / 100 * 100).round()}%',
                        ]
                        : ['No slider data available'],
                  ),

                  const SizedBox(height: 16),

                  _buildSummaryCard(
                    'Settings',
                    Icons.settings,
                    settingsData != null
                        ? [
                          'Newsletter: ${settingsData!['newsletter'] == true ? "Enabled" : "Disabled"}',
                          'Push Notifications: ${settingsData!['pushNotifications'] == true ? "Enabled" : "Disabled"}',
                          'Dark Mode: ${settingsData!['darkMode'] == true ? "Enabled" : "Disabled"}',
                          'Offline Mode: ${settingsData!['offlineMode'] == true ? "Enabled" : "Disabled"}',
                        ]
                        : ['No settings data available'],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        () => Navigator.of(
                          context,
                        ).popUntil((route) => route.isFirst),
                    child: const Text('Back to Home'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Summary data would be saved here'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: const Text('Save Summary'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(String title, IconData icon, List<String> items) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 24),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ...items
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(item, style: const TextStyle(fontSize: 14)),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
