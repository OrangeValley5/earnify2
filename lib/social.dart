import 'package:flutter/material.dart';
import 'package:earnify/socialpacks.dart';
import 'package:earnify/membership.dart';
import 'package:earnify/adspage.dart';
import 'package:earnify/taskpage.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
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
              height: MediaQuery.of(context).size.height * 1,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Social',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Buy real social media enegagements eg likes, comments, followers',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TaskPage()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 135,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFF0E1FF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xFF9429FF),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              )),
                          const Expanded(
                            child: SizedBox(
                              height: 20,
                            ),
                          ),
                          const Text(
                            'Perform Task',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF9429FF)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Perform simple social media task and get paid on the go',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SocialPacks()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 135,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFF0E1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF9123),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              )),
                          const Expanded(
                            child: SizedBox(
                              height: 20,
                            ),
                          ),
                          const Text(
                            'Buy Boost',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFFFF9123)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Perform simple social media task and get paid on the go',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdsPage()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      height: 135,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFEEFFE1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xFF50B600),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              )),
                          const Expanded(
                            child: SizedBox(
                              height: 20,
                            ),
                          ),
                          const Text(
                            'Watch ADS',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF50B600)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Perform simple social media task and get paid on the go',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 103, 103, 103)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
