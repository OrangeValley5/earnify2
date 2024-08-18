import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard.dart';
import 'colors.dart' as color;

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  // List of gender
  final List<String> _gender = [
    'Male',
    'Female',
  ];

  // The currently selected gender
  String? _selectedGender;

  // List of religion
  final List<String> _religion = ['Christian', 'Islam', 'Others'];

  // The currently selected religion
  String? _selectedReligion;

  // List of states
  final List<String> _statez = [
    'Abia',
    'Adamawa',
    'Akwa Ibom',
    'Anambra',
    'Bauchi',
    'Bayelsa',
    'Benue',
    'Borno',
    'Cross River',
    'Delta',
    'Ebonyi',
    'Edo',
    'Ekiti',
    'Enugu',
    'FCT - Abuja',
    'Gombe',
    'Imo',
    'Jigawa',
    'Kaduna',
    'Kano',
    'Katsina',
    'Kebbi',
    'Kogi',
    'Kwara',
    'Lagos',
    'Nasarawa',
    'Niger',
    'Ogun',
    'Ondo',
    'Osun',
    'Oyo',
    'Plateau',
    'Rivers',
    'Sokoto',
    'Taraba',
    'Yobe',
    'Zamfara'
  ];

  // The currently selected state
  String? _selectedStatez;

  // Controller for phone number input
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Function to load data from SharedPreferences
  Future<void> _loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _selectedGender = prefs.getString('gender') ?? '';
      _selectedReligion = prefs.getString('religion') ?? '';
      _selectedStatez = prefs.getString('state') ?? '';
      _phoneController.text = prefs.getString('phone') ?? '';
      usernameController.text = prefs.getString('username') ?? '';
    });
  }

  // Function to save data to SharedPreferences
  Future<void> _saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('gender', _selectedGender ?? '');
    await prefs.setString('religion', _selectedReligion ?? '');
    await prefs.setString('state', _selectedStatez ?? '');
    await prefs.setString('phone', _phoneController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.only(left: 25, top: 50, right: 25),
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
                          height: 20,
                        ),
                        const Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Let us know more about you so we can personalise your experience while performing task",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
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
                          child: TextFormField(
                            controller: usernameController,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Enter your username',
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) =>
                                value != null && value.length < 6
                                    ? 'Required'
                                    : null,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: color.AppColor.lightgray),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              border: InputBorder.none,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    hint: const Text(
                                      "Select a gender",
                                      style: TextStyle(
                                          color: Colors
                                              .grey), // Custom hint text color
                                    ),
                                    value: _selectedGender,
                                    icon: const Icon(Icons.arrow_drop_down),
                                    iconSize: 24,

                                    elevation: 16,
                                    style: const TextStyle(
                                        color: Colors
                                            .black), // Dropdown list values color
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedGender = newValue;
                                      });
                                    },
                                    items: _gender
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                              color: Colors
                                                  .black), // Dropdown list values color
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: color.AppColor.lightgray),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              border: InputBorder.none,
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                hint: const Text(
                                  "Select a religion",
                                  style: TextStyle(
                                      color: Colors
                                          .grey), // Custom hint text color
                                ),
                                value: _selectedReligion,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors
                                        .black), // Dropdown list values color
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedReligion = newValue;
                                  });
                                },
                                items: _religion.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                          color: Colors
                                              .black), // Dropdown list values color
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: color.AppColor.lightgray),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              border: InputBorder.none,
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                hint: const Text(
                                  "Select your state",
                                  style: TextStyle(
                                      color: Colors
                                          .grey), // Custom hint text color
                                ),
                                value: _selectedStatez,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors
                                        .black), // Dropdown list values color
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedStatez = newValue;
                                  });
                                },
                                items: _statez.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                          color: Colors
                                              .black), // Dropdown list values color
                                    ),
                                  );
                                }).toList(),
                              ),
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
                          child: TextFormField(
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                            decoration: const InputDecoration(
                              hintText: 'E.g 080',
                              labelText: 'Phone Number',
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) =>
                                value != null && value.length < 10
                                    ? 'Enter a valid phone number'
                                    : null,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    await _saveData();
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 130,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
