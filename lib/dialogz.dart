 /*import 'package:flutter/material.dart';

class Dialogz extends StatefulWidget {
  const Dialogz({Key? key}) : super(key: key);

  @override
  State<Dialogz> createState() => _DialogzState();
}

  Future<void> _showUsernameDialog() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Username Status'),
          content: Text(username == null || username.isEmpty
              ? 'No username found. Please enter a username.'
              : 'Username found: $username'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    });
  } 


class _DialogzState extends State<Dialogz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}


*/