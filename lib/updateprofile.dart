import 'package:flutter/material.dart';
import 'colors.dart' as color;

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
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
                        'Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, top: 0, right: 12),
                          decoration: BoxDecoration(
                              color: color.AppColor.lightgray,
                              borderRadius: BorderRadius.circular(20)),
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, top: 0, right: 12),
                          decoration: BoxDecoration(
                              color: color.AppColor.lightgray,
                              borderRadius: BorderRadius.circular(20)),
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, top: 0, right: 12),
                          decoration: BoxDecoration(
                              color: color.AppColor.lightgray,
                              borderRadius: BorderRadius.circular(20)),
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, top: 0, right: 12),
                          decoration: BoxDecoration(
                              color: color.AppColor.lightgray,
                              borderRadius: BorderRadius.circular(20)),
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, top: 0, right: 12),
                          decoration: BoxDecoration(
                              color: color.AppColor.lightgray,
                              borderRadius: BorderRadius.circular(20)),
                          child: const TextField(
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
