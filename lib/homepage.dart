import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bibesh Mandal\'s Portfolio'),
        backgroundColor: Colors.teal,
        actions: [
          buildAppBarButton(context, 'About Me', '/about'),
          buildAppBarButton(context, 'Resume', '/resume'),
          buildAppBarButton(context, 'Skills', '/skills'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeroSection(),
            const SizedBox(height: 20),
            buildSummarySection(),
            const SizedBox(height: 20),
            buildFeaturedSkillsSection(),
          ],
        ),
      ),
    );
  }

  Widget buildHeroSection() {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQFAszmAp6MvNg/profile-displayphoto-shrink_800_800/0/1705067790647?e=2147483647&v=beta&t=pYAzpF5kd2tG9roICSDb8yolS3grvTKyn9b3eGDYazc'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          color: Colors.black.withOpacity(0.5),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/D5603AQFAszmAp6MvNg/profile-displayphoto-shrink_800_800/0/1705067790647?e=2147483647&v=beta&t=pYAzpF5kd2tG9roICSDb8yolS3grvTKyn9b3eGDYazc'),
              ),
              SizedBox(height: 20),
              Text(
                'Hi, I am Bibesh Mandal',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Passionate Developer | Mobile & Web Applications',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSummarySection() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Summary',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'I am a passionate developer with extensive experience in mobile and web development. '
                'I thrive on solving complex problems and continuously learning new technologies. '
                'My journey in software development has been driven by a relentless curiosity and a desire to create impactful solutions.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildFeaturedSkillsSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Featured Skills',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildSkillItem('Flutter Development', Icons.mobile_friendly),
          buildSkillItem('Web Development', Icons.web),
          buildSkillItem('Problem Solving', Icons.psychology),
          buildSkillItem('Team Collaboration', Icons.group),
        ],
      ),
    );
  }

  Widget buildSkillItem(String skill, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.teal),
          const SizedBox(width: 16),
          Text(skill, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  Widget buildAppBarButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
