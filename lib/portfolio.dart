import 'dart:html';

import 'package:flutter/material.dart';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/widget/project_card.dart';

import 'package:portfolio_app/widget/skills.dart';

class PortfolioScreen extends StatelessWidget {
  final List<String> svgString = [
    '''<svg width="57" height="47" viewBox="0 0 57 47" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M55.7752 22.3007L50.5706 13.898C50.6819 13.6906 50.7655 13.4572 50.7655 13.1978C50.7655 12.4197 
        50.0697 11.7713 49.2347 11.7454L43.4735 2.46091C43.5292 2.30532 43.5848 2.14973 43.5848 1.99413C43.5848 
        1.16428 42.8612 0.515869 41.9983 0.515869C41.4974 0.515869 41.0799 0.723357 40.7737 1.06049H29.6967C29.4184 
        0.723454 29.0009 0.515966 28.4999 0.515966C27.999 0.515966 27.5815 0.723454 27.3032 1.06058H16.2818C15.9756 
        0.723454 15.5582 0.515966 15.0572 0.515966C14.1944 0.515966 13.4707 1.16428 13.4707 1.99423C13.4707 2.14982 
        13.5264 2.33136 13.5821 2.46101L7.76518 11.8752C7.20866 12.1086 6.81891 12.6014 6.81891 13.1979C6.81891 13.2497 6.84675 13.3016 6.84675 13.3535L1.30817 22.2749C0.556726 22.4045 0 23.001 0 23.7272C0 24.4274 0.528775 25.0239 1.25248 25.1795L6.98588 34.4122C6.93019 34.5678 6.90234 34.6974 6.90234 34.8789C6.90234 35.5792 7.43112 36.1757 8.15482 36.3053L13.5264 44.9933C13.4707 45.1489 13.4151 45.3304 13.4151 45.5119C13.4151 46.3418 14.1387 46.9902 15.0016 46.9902C15.5025 46.9902 15.92 46.7827 16.1984 46.4715H27.3033C27.5815 46.7826 28.0269 46.9901 28.4999 46.9901C28.973 46.9901 29.4184 46.7826 29.6967 46.4714H40.8295C41.1077 46.7567 41.5252 46.9382 41.9706 46.9382C42.8612 46.9382 43.557 46.2639 43.557 45.4599C43.557 45.3044 43.5293 45.1747 43.4736 45.0451L48.8452 36.3052C49.5688 36.1756 50.0977 35.5791 50.0977 34.8788C50.0977 34.7233 50.0698 34.5677 50.0141 34.4121L55.7197 25.1794C56.4433 25.0498 57 24.4532 57 23.7271C56.9998 23.0269 56.4709 22.4304 55.7752 22.3007ZM14.5283 42.6072L9.99177 35.2679H14.5283V42.6072ZM14.5283 34.4898H9.99177C9.96392 34.3861 9.90823 34.2824 9.85264 34.1786L14.5283 29.5883V34.4898ZM14.5283 28.4471L9.29591 33.6081C9.15678 33.5562 9.01755 33.4783 8.87842 33.4525L3.08953 24.1161C3.14512 23.9865 3.14512 23.8567 3.14512 23.7271C3.14512 23.5974 3.14512 23.4937 3.11727 23.39L8.51672 14.6761C8.79509 14.6501 9.07335 14.5723 9.32386 14.4167L14.5284 19.448V28.4471H14.5283ZM14.5283 18.5402L9.7691 13.9499C9.90823 13.7424 9.99177 13.4831 9.99177 13.1979C9.99177 13.1719 9.96392 13.12 9.96392 13.0941L14.5283 11.5639V18.5402ZM14.5283 10.734L9.99177 12.2641L14.5283 4.95066V10.734ZM48.4554 14.5205L48.539 14.6501L44.8651 30.8331L38.2411 24.3236L48.4276 14.4945L48.4554 14.5205ZM28.8896 33.3487L30.0864 34.4898H27.7207L28.8896 33.3487ZM28.8617 32.2594L20.2061 23.9865L28.4721 15.8172L37.1 24.2977L28.8617 32.2594ZM29.4184 32.83L37.6566 24.8682L44.6702 31.7667L44.058 34.4898H31.1718L29.4184 32.83ZM41.2191 3.26501C41.3304 3.3169 41.4417 3.3688 41.5809 3.39475L47.5926 13.146V13.1979C47.5926 13.4831 47.676 13.7424 47.8153 13.9499L37.6845 23.753L29.0567 15.2726L41.2191 3.26501ZM40.2729 3.05752L28.4721 14.702L22.5439 8.86679L39.8274 3.05752H40.2729ZM27.4423 3.05752C27.7206 3.31681 28.0823 3.4724 28.4999 3.4724C28.9175 3.4724 29.2792 3.31681 29.5576 3.05752H37.3505L21.9317 8.24432L16.6436 3.05752H27.4423ZM15.3634 3.60214L15.4747 3.39475C15.5686 3.37239 15.6614 3.34642 15.753 3.3169L21.0689 8.52975L15.3634 10.4488V3.60214ZM15.3634 11.2787L21.6811 9.15212L27.8876 15.2726L19.6216 23.4159L15.3634 19.3443V11.2787ZM15.3634 20.2519L19.1484 23.9086L15.3634 27.6173V20.2519ZM15.3634 28.7584L19.7329 24.4533L28.333 32.7782L26.5517 34.4898H15.3634V28.7584ZM16.087 44.4485C15.92 44.293 15.7252 44.1893 15.4747 44.1114L15.3634 43.9558V35.2679H25.7446L16.2261 44.4485H16.087ZM29.5854 44.4485C29.3071 44.2152 28.9175 44.0337 28.4999 44.0337C28.0823 44.0337 27.6929 44.2152 27.4144 44.4485H17.3949L26.9134 35.2679H30.8934L40.4119 44.4485H29.5854ZM42.0541 43.3074L41.6088 44.0336C41.4697 44.0595 41.3584 44.1113 41.247 44.1632L31.979 35.2678H43.8633L42.0541 43.3074ZM43.3899 41.1549L44.7259 35.2679H47.0081L43.3899 41.1549ZM47.0081 34.4898H44.8929L45.366 32.4411L47.1473 34.2046C47.0917 34.2823 47.036 34.386 47.0081 34.4898ZM53.8826 24.0902L48.1214 33.4525C47.9822 33.5043 47.843 33.5562 47.7039 33.6339L45.5608 31.5073L49.1512 15.6356L53.9104 23.3122C53.8826 23.4419 53.8269 23.5715 53.8269 23.7271C53.8269 23.8567 53.8548 23.9605 53.8826 24.0902Z" fill="#27AE60"/>
        </svg>''',
    '''<svg width="51" height="47" viewBox="0 0 51 47" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M13.6744 18.8037C13.2327 18.5029 12.7898 18.3525 12.3481 18.3525H10.3628V29.1899H12.3493C12.791 29.1899 
        13.2338 29.0395 13.6755 28.7387C14.1172 28.4378 14.3381 27.9866 14.3381 27.3838V20.1585C14.3369 19.5569 14.1149 
        19.1046 13.6744 18.8037ZM46.0025 0.515869H4.99754C2.24263 0.515869 0.00683036 2.54808 0 5.05957V42.4465C0.00683036 
        44.958 2.24263 46.9902 4.99754 46.9902H46.0025C48.7585 46.9902 50.9932 44.958 51 42.4465V5.05957C50.9932 2.54808 
        48.7574 0.515869 46.0025 0.515869ZM17.554 27.4036C17.554 29.3549 16.2323 32.3114 12.0487 
        32.3051H6.76661V15.1408H12.1603C16.1948 15.1408 17.5517 18.0931 17.5529 20.0455L17.554 27.4036ZM29.0154 
        18.2062H22.95V22.1918H26.6577V25.2593H22.95V29.2439H29.0165V32.3114H21.938C20.6675 32.3414 19.6111 31.4265 
        19.5792 30.2688V17.2902C19.5485 16.1335 20.5537 15.1729 21.823 15.1439H29.0165L29.0154 18.2062ZM40.8137 30.1661C39.311 33.356 36.6187 32.7211 35.4131 30.1661L31.0269 15.1449H34.7346L38.1168 26.9419L41.483 15.1449H45.1919L40.8137 30.1661Z" fill="#27AE60"/>
        </svg>'''
  ];
  final smallText = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Victor ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'About',
                        style: smallText,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Services',
                        style: smallText,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Contact',
                        style: smallText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, I am\nVictor Osarobo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 205,
                          child: Text(
                            'Mobile Developer',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => downloadFile("/document/victor.pdf"),
                          child: Container(
                            width: 143,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Color(0xFF27AE60),
                            ),
                            child: Center(
                              child: Text(
                                'Download CV',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    Flexible(
                      child: CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage('images/victor.png'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'About',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 756,
                      height: 152,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
                        ' Excepteur sint occaecat cupidatat non proident',
                        textAlign: TextAlign.justify,
                        style: smallText,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Icon(CommunityMaterialIcons.twitter),
                        ),
                        CircleAvatar(
                          child: Icon(
                            CommunityMaterialIcons.github,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.black87,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            CommunityMaterialIcons.whatsapp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 222,
                    height: 60.03,
                    child: Text(
                      'Services',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 250,
                          height: 220,
                          padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
                          decoration: BoxDecoration(color: Color(0xFF202020)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.string(svgString[0]),
                              SizedBox(height: 30),
                              Text(
                                'Software\nDevelopment',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 243, 222, 222),
                                  fontSize: 32,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 250,
                          height: 220,
                          padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
                          decoration: BoxDecoration(color: Color(0xFF202020)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.string(svgString[1]),
                              SizedBox(height: 35),
                              Text(
                                'Web Development',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 243, 222, 222),
                                  fontSize: 32,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              MySkills(),
              SizedBox(height: 20),
              Row(
                children: [
                  ProjectCard(
                    title: 'Tripster',
                    description:
                        'Visit Unique places and enjoy the view of nature wonders',
                    technologies: ['Flutter', 'Dart', 'Firebase'],
                    githubLink: 'https://github.com/victormystery/Tripster',
                  ),
                  ProjectCard(
                    title: 'Flutter_Note_App',
                    description:
                        'Take a Dive into the Uniquely Designed Notepad with better privacy',
                    technologies: ['Flutter', 'Dart', 'Firebase'],
                    githubLink:
                        'https://github.com/victormystery/Flutter_Note_App',
                  ),
                  ProjectCard(
                    title: 'Tracky',
                    description:
                        'Track all your packages and make payment for all your deliveries',
                    technologies: ['Flutter', 'Dart', 'Firebase'],
                    githubLink: 'https://github.com/victormystery/Tracky',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

downloadFile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "Victor CV";
  anchorElement.click();
}