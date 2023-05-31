import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Projects',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ProjectCard(
                title: 'Weather App',
                description:
                    'A weather app that displays current weather information based on the user\'s location.',
                technologies: ['Flutter', 'Dart', 'REST API integration'],
                githubLink: 'https://github.com/your-username/weather-app',
              ),
              SizedBox(height: 16.0),
              ProjectCard(
                title: 'Tracky',
                description:
                    'A task management app that allows users to create, update, and organize their tasks.',
                technologies: ['Flutter', 'Dart', ],
                githubLink: 'https://github.com/victormystery/Tracky',
              ),
              // Add more ProjectCard widgets for each project in your portfolio
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;
  final String githubLink;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.technologies,
    required this.githubLink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Technologies used: ${technologies.join(", ")}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                // Add code to open the GitHub repository link
              },
              child: GestureDetector(
                onTap: () async {
                  final Uri _url = Uri.parse(githubLink);

                  if (await launchUrl(_url)) {
                    await launchUrl(_url,
                        webOnlyWindowName: "My Portfolio",
                        mode: LaunchMode.inAppWebView,
                        webViewConfiguration: WebViewConfiguration(
                          enableJavaScript: true,
                        ));
                  } else {
                    throw Exception('Could not launch $_url');
                  }
                },
                child: Text(
                  'GitHub Repository',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
