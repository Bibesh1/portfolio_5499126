import 'package:flutter/material.dart';
import 'homepage.dart';
import 'about.dart';
import 'resume.dart';
import 'skill.dart';
// import 'projects_page.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/about': (context) =>  AboutPage(),
        '/resume': (context) => const ResumePage(),
        '/skills': (context) => const SkillsPage(),
      },
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('My Portfolio'),
      actions: <Widget>[
        Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text(
                'About Me',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/resume');
              },
              child: const Text(
                'Resume',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/skills');
              },
              child: const Text(
                'Skills',
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}