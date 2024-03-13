import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_portfolio/components/tool_insight_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ScrollController listViewController = ScrollController();

    List<Widget> cardsList = [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.network(
              width: 200,
              'https://images.pexels.com/photos/20262363/pexels-photo-20262363/free-photo-of-canoes-on-the-lake-new-zealand.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.network(
              width: 200,
              'https://images.pexels.com/photos/20262363/pexels-photo-20262363/free-photo-of-canoes-on-the-lake-new-zealand.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.network(
              width: 200,
              'https://images.pexels.com/photos/20262363/pexels-photo-20262363/free-photo-of-canoes-on-the-lake-new-zealand.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.network(
              width: 200,
              'https://images.pexels.com/photos/20262363/pexels-photo-20262363/free-photo-of-canoes-on-the-lake-new-zealand.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
      ),
    ];

    return Scaffold(
      body: Center(
        child: ListView(
          controller: listViewController,
          children: [
            //Navbar
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Row(
                    children: [
                      Text('Qasim'),
                    ],
                  ),
                  const SizedBox(),
                  Row(
                    children: [
                      InkWell(
                        onHover: (value) {},
                        onTap: () {
                          listViewController.animateTo(0,
                              duration: const Duration(seconds: 1),
                              curve: Curves.bounceIn);
                        },
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onHover: (value) {},
                        onTap: () {
                          listViewController.animateTo(
                              550,
                              duration: const Duration(seconds: 1),
                              curve: Curves.linearToEaseOut);
                        },
                        child: const Text(
                          'Services',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onHover: (value) {},
                        onTap: () {
                          listViewController.animateTo(1000,
                              duration: const Duration(seconds: 1),
                              curve: Curves.linearToEaseOut);
                        },
                        child: const Text(
                          'Portfolio',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onHover: (value) {},
                        onTap: () {
                          listViewController.animateTo(1800,
                              duration: const Duration(seconds: 1),
                              curve: Curves.linearToEaseOut);
                        },
                        child: const Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      'Download CV',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            //Hero
            SizedBox(
              width: screenWidth * 0.5,
              height: screenHeight * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I\'m\n',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            height: 0.8),
                      ),
                      Text(
                        'Muhammad\n',
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            height: 0.5),
                      ),
                      Text(
                        'Qasim\n',
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            height: 0.5),
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right_outlined),
                          Text('Video Editor'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right_outlined),
                          Text('Graphics Designer'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right_outlined),
                          Text('Flutter Developer'),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.2,
                    height: screenHeight * 0.5,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/hero_image.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        topRight: Radius.circular(200),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Strip
            Container(
              height: 50,
              width: screenWidth,
              color: Colors.black,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('3+ Years Experience'),
                  Text('200+ Satisfied Clients'),
                  Text('1000+ Projects Completed'),
                ],
              ),
            ),
            //Services
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                  child: Text(
                'Services',
                style: TextStyle(fontSize: 50),
              )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ServiceWidget(
                    title: 'Video Editing',
                    description: 'Transform raw footage into captivating visual stories.',
                    icon: 'assets/icons/editing.png',
                  ),ServiceWidget(
                    title: 'Graphics Designing',
                    description: 'Elevate your brand with my comprehensive graphics designing service.',
                    icon: 'assets/icons/editing.png',
                  ),ServiceWidget(
                    title: 'Mobile Application\nDevelopment',
                    description: 'Build high-end Mobile Application to Upscale your business..',
                    icon: 'assets/icons/editing.png',
                  ),
                ],
              ),
            ),
            //Tools and Technologies
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50),
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'TOOLS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AND',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'TECHNOLOGIES',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ToolInsightsWidget(
                          toolName: 'Adobe Premiere Pro',
                          percentage: 90,
                        ),
                        ToolInsightsWidget(
                          toolName: 'Adobe After Effects',
                          percentage: 85,
                        ),
                        ToolInsightsWidget(
                          toolName: 'Adobe Photoshop',
                          percentage: 95,
                        ),
                        ToolInsightsWidget(
                          toolName: 'Flutter',
                          percentage: 80,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Portfolio
            const Center(
                child: Text(
              'Portfolio',
              style: TextStyle(fontSize: 50),
            )),
            const Divider(
              thickness: 2,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                  child: Text(
                'Graphics Designing',
                style: TextStyle(fontSize: 30),
              )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20),
              child: SizedBox(
                height: 200,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: cardsList,
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(fontSize: 10, color: Colors.blue),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text(
                  'Video Editing',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20),
              child: SizedBox(
                height: 200,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: cardsList,
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(fontSize: 10, color: Colors.blue),
                ),
              ),
            ),

            //Get in touch
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50),
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'GET',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'IN',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'TOUCH',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Your Name:',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 15,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Your Email:',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 15,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Your Message:',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              maxLines: 3,
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final String icon;


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.5,
      width: screenWidth * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon,width: 100,),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.white),
            ),
            child: const Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
