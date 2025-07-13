import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Über mich'), elevation: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Color(0xFF2E7D8A),
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bibesh Kumar Mandal',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E7D8A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Flutter Developer & Student',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
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
              'Hallo! Ich bin Bibesh Kumar Mandal, ein leidenschaftlicher Flutter-Entwickler und Student '
              'der Informatik. Ich liebe es, innovative und benutzerfreundliche mobile Anwendungen zu entwickeln.',
              style: TextStyle(fontSize: 16, height: 1.6, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            const Text(
              'Fähigkeiten',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D8A),
              ),
            ),
            const SizedBox(height: 16),
            _buildSkillsList(),
            const SizedBox(height: 32),
            const Text(
              'Ausbildung',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D8A),
              ),
            ),
            const SizedBox(height: 16),
            _buildEducationCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillsList() {
    final skills = [
      {'name': 'Flutter', 'level': 0.9},
      {'name': 'Dart', 'level': 0.85},
      {'name': 'Firebase', 'level': 0.8},
      {'name': 'Git', 'level': 0.75},
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
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF2E7D8A),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: skill['level'] as double,
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Color(0xFF2E7D8A),
                    ),
                    minHeight: 8,
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }

  Widget _buildEducationCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bachelor of Computer Science',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Technische Universität',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 4),
            const Text(
              '2021 - 2025',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF2E7D8A),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Schwerpunkt: Software Engineering und Mobile Development',
              style: TextStyle(fontSize: 14, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
