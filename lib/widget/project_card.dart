import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../style/app_style.dart';

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
    int color_id = Random().nextInt(AppStyle.cardsColor.length);
    return Expanded(
      child: Card(
        elevation: 2.0,
        color: AppStyle.cardsColor[color_id],
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
                onPressed: () async {
                  final Uri _url = Uri.parse(githubLink);

                  if (await launchUrl(_url)) {
                    await launchUrl(_url,
                        webOnlyWindowName: '_blank',
                        // webOnlyWindowName: "My Portfolio",
                        mode: LaunchMode.externalApplication,
                        webViewConfiguration: WebViewConfiguration(
                          enableJavaScript: true,
                          enableDomStorage: true,
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
            ],
          ),
        ),
      ),
    );
  }
}
