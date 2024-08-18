import 'package:flutter/material.dart';
import 'package:earnify/createorder.dart';
import 'package:earnify/membership.dart';
import 'colors.dart' as color;

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to the next screen after 5 seconds
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: color.AppColor.lightgray),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Perform Task & earn',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'See our currently available task below. Click on any of the task to start earning',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Available Task',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  //ADPOST
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Membership()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('lib/images/tiktok.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Follow people & pages',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Get active users to repost your adverts on facebook, Instagram, whatsapp status, Tiktok, Twitter etc.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Earnings: N50',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromARGB(255, 48, 48, 48)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Membership()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Color.fromARGB(255, 241, 241, 241),
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 199, 199, 199)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  "Select",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 97, 97, 97),
                                      fontSize: 10),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //SECOND CONTAINER
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Membership()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  child:
                                      Image.asset('lib/images/instagram.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Like post on instagram',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Get active users to repost your adverts on facebook, Instagram, whatsapp status, Tiktok, Twitter etc.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Earnings: N150',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromARGB(255, 48, 48, 48)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Membership()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Color.fromARGB(255, 241, 241, 241),
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 199, 199, 199)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  "Select",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 97, 97, 97),
                                      fontSize: 10),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //THIRD CONTAINER
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Membership()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('lib/images/whatsapp.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Post advert on whatsapp',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Get active users to repost your adverts on facebook, Instagram, whatsapp status, Tiktok, Twitter etc.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Earnings: N50',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromARGB(255, 48, 48, 48)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Membership()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Color.fromARGB(255, 241, 241, 241),
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 199, 199, 199)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  "Select",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 97, 97, 97),
                                      fontSize: 10),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //FOURTH CONTAINER
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Membership()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Center(
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset('lib/images/twitter.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Post advert on twitter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Get active users to repost your adverts on facebook, Instagram, whatsapp status, Tiktok, Twitter etc.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Earnings: N50',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromARGB(255, 48, 48, 48)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Membership()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Color.fromARGB(255, 241, 241, 241),
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 199, 199, 199)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  "Select",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 97, 97, 97),
                                      fontSize: 10),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
