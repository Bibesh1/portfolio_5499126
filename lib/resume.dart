import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // Personal Details
            buildSectionTitle('Personal Details'),
            buildPersonalDetails(),
            const Divider(height: 32, color: Colors.teal),

            // Contact
            buildSectionTitle('Contact'),
            buildContact(),
            const Divider(height: 32, color: Colors.teal),

            // Experience
            buildSectionTitle('Experience'),
            buildExperience(),
            const Divider(height: 32, color: Colors.teal),

            // Education
            buildSectionTitle('Education'),
            buildEducation(),
            const Divider(height: 32, color: Colors.teal),

            // Skills
            buildSectionTitle('Skills'),
            buildSkills(),
            const Divider(height: 32, color: Colors.teal),

            // Courses
            buildSectionTitle('Courses'),
            buildCourses(),
            const Divider(height: 32, color: Colors.teal),

            // Languages
            buildSectionTitle('Languages'),
            buildLanguages(),
            const Divider(height: 32, color: Colors.teal),

            // Hobbies
            buildSectionTitle('Hobbies'),
            buildHobbies(),
            const Divider(height: 32, color: Colors.teal),

            // Links
            buildSectionTitle('Links'),
            buildLinks(),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
    );
  }

  Widget buildPersonalDetails() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bibesh Kumar Mandal',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text('Geburtsdatum: 18 April 2003'),
        Text('Geburtsort: Morang, Nepal'),
        Text('Staatsangehörigkeit: Nepal'),
      ],
    );
  }

  Widget buildContact() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone: +49 176 77992144'),
        Text('Email: bibeshmandal360@gmail.com'),
        Text('Address: Steinkaute 4C, 61169, Friedberg, Hessen, Germany'),
      ],
    );
  }

  Widget buildExperience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildExperienceItem('November 2022 - März 2023', 'Auslieferungsfahrer',
            'Germany, Leipzig'),
        buildExperienceItem('September 2023 - April 2024', 'Verkäufer',
            'Ditsch / Germany, Friedberg'),
        buildExperienceItem(
            'Mai 2024 - Present', 'Kommissionierer', 'Aldi Süd'),
      ],
    );
  }

  Widget buildExperienceItem(String period, String position, String location) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(period, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(position),
          Text(location),
        ],
      ),
    );
  }

  Widget buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildEducationItem('2023 - Present', 'Wirtschaftsinformatik',
            'Technische Hochschule Mittelhessen (THM) / Germany, Friedberg'),
        buildEducationItem('2018 - 2020', 'Abitur',
            'Kasturi Secondary School / Nepal, Itahari'),
      ],
    );
  }

  Widget buildEducationItem(String period, String degree, String institution) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(period, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(degree),
          Text(institution),
        ],
      ),
    );
  }

  Widget buildSkills() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Teamwork: Skillful'),
        Text('Communication: Skillful'),
        Text('Accounting: Skillful'),
        Text('Microsoft Office: Skillful'),
      ],
    );
  }

  Widget buildCourses() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('2018: Graphic Design, Expert Institute of Advance Technologies'),
      ],
    );
  }

  Widget buildLanguages() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Deutsch'),
        Text('English'),
        Text('Nepalesisch'),
      ],
    );
  }

  Widget buildHobbies() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fitness'),
        Text('Traveling'),
        Text('Reading'),
      ],
    );
  }

  Widget buildLinks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            // Handle LinkedIn URL tap
          },
          child: const Text(
            'https://www.linkedin.com/in/bibesh-kumar-mandal-065b6b2a9/',
            style: TextStyle(
                color: Colors.blue, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
