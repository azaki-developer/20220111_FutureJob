import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widgets/custom_list.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageUrl;

  SecondHomePage({this.imageUrl, this.jobTitleHome});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 200.0,
                        left: 24,
                      ),
                      child: Text(
                        jobTitleHome,
                        style: jobTtileTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 240,
                        left: 24,
                      ),
                      child: Text(
                        '12,309 available',
                        style: availableJobTextStyle,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Companies',
                        style: titleList,
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Front-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Instagram',
                            jobTitle: 'UI Designer',
                            imageUrl: 'assets/instagram-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Facebook',
                            jobTitle: 'Data Scientist',
                            imageUrl: 'assets/facebook-icon.png',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Startups',
                        style: titleList,
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Front-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Instagram',
                            jobTitle: 'UI Designer',
                            imageUrl: 'assets/instagram-icon.png',
                          ),
                          SizedBox(height: 16),
                          CustomList(
                            companyName: 'Facebook',
                            jobTitle: 'Data Scientist',
                            imageUrl: 'assets/facebook-icon.png',
                          ),
                        ],
                      )
                    ],
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
