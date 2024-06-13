import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.teal,
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D5603AQFAszmAp6MvNg/profile-displayphoto-shrink_800_800/0/1705067790647?e=2147483647&v=beta&t=pYAzpF5kd2tG9roICSDb8yolS3grvTKyn9b3eGDYazc'),
                ),
                SizedBox(height: 20),
                Text(
                  'Bibesh Mandal',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Hi, I am Bibesh Mandal, a passionate developer with interests in mobile applications and web development. '
                        'I love solving complex problems and am always eager to learn new technologies.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Interests',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'I am deeply interested in software development, particularly in the fields of mobile app development and web development. '
                        'I also enjoy exploring new technologies and frameworks to enhance my skills and knowledge.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'What Motivates Me',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'What motivates me is the opportunity to create meaningful and impactful solutions through software development. '
                        'I am driven by the challenge of solving complex problems and the satisfaction of seeing my work make a positive difference.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
