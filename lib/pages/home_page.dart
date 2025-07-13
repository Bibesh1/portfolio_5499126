import 'package:flutter/material.dart';
import 'package:portfolio_5499126/pages/profile_form.dart';
import 'package:portfolio_5499126/pages/settings_page.dart';
import 'package:portfolio_5499126/pages/slider_page.dart';
import 'package:portfolio_5499126/pages/summary_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bibesh Kumar Mandal'), elevation: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF2E7D8A).withValues(alpha: 0.1),
                    const Color(0xFF2E7D8A).withValues(alpha: 0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Color(0xFF2E7D8A),
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Willkommen im Portfolio von',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Bibesh Kumar Mandal',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E7D8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Flutter Developer & Student',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Welcome Text
            const Text(
              'Über mich',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D8A),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hallo! Ich bin Bibesh Kumar Mandal, ein leidenschaftlicher Flutter-Entwickler und Student. '
              'Dieses Portfolio zeigt meine Arbeit und Fähigkeiten in der App-Entwicklung. '
              'Ich liebe es, benutzerfreundliche und innovative Anwendungen zu erstellen.',
              style: TextStyle(fontSize: 16, height: 1.6, color: Colors.grey),
            ),

            const SizedBox(height: 32),

            // Interactive Pages Section
            const Text(
              'Interaktive Funktionen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D8A),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Entdecken Sie die verschiedenen interaktiven Seiten meines Portfolios:',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.1,
              children: [
                _buildNavigationCard(
                  context,
                  'Slider Demo',
                  Icons.tune,
                  const Color(0xFF2E7D8A),
                  'Interaktiver Slider mit visuellen Effekten',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SliderPage()),
                  ),
                ),
                _buildNavigationCard(
                  context,
                  'Profil Formular',
                  Icons.person_outline,
                  const Color(0xFF4CAF50),
                  'Persönliche Informationen bearbeiten',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileFormPage(),
                    ),
                  ),
                ),
                _buildNavigationCard(
                  context,
                  'Einstellungen',
                  Icons.settings,
                  const Color(0xFFFF9800),
                  'App-Einstellungen konfigurieren',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  ),
                ),
                _buildNavigationCard(
                  context,
                  'Zusammenfassung',
                  Icons.summarize,
                  const Color(0xFF9C27B0),
                  'Alle Daten auf einen Blick',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SummaryPage(),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Skills Section
            const Text(
              'Fähigkeiten',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D8A),
              ),
            ),
            const SizedBox(height: 16),
            _buildSkillsSection(),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    String description,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                color.withValues(alpha: 0.1),
                color.withValues(alpha: 0.05),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillsSection() {
    final skills = [
      {'name': 'Flutter', 'level': 0.9, 'color': const Color(0xFF2E7D8A)},
      {'name': 'Dart', 'level': 0.85, 'color': const Color(0xFF4CAF50)},
      {'name': 'UI/UX Design', 'level': 0.8, 'color': const Color(0xFFFF9800)},
      {'name': 'Git', 'level': 0.75, 'color': const Color(0xFF9C27B0)},
    ];

    return Column(
      children:
          skills.map((skill) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        skill['name'] as String,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${((skill['level'] as double) * 100).round()}%',
                        style: TextStyle(
                          fontSize: 14,
                          color: skill['color'] as Color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: skill['level'] as double,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      skill['color'] as Color,
                    ),
                    minHeight: 8,
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
