import 'package:cc/Screens/navigationmenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedDropdownValue; // Allow null for the hint
  TextEditingController yearController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carbon Emission Calculator'),
      ),
      drawer: NavigationMenuDrawerItem(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/carbon_emission_image.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: yearController,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Enter the Year as YYYY/MM',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the year';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: selectedDropdownValue,
                  onChanged: (value) {
                    setState(() {
                      selectedDropdownValue = value;
                    });
                  },
                  items: [
                    'PCEIEUS',
                    'RFEIEUS',
                    'PAEIEUS',
                    'DKEIEUS',
                    'TXEIEUS',
                    'NNEIEUS',
                    'NWEIEUS',
                    'GEEIEUS',
                    'CLEIEUS',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(fontSize: 16)),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Select MSN',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: descriptionController,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Enter the Description',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the description';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Perform calculation here
                      // For demonstration, let's assume the value is 42
                      double calculatedValue = 42;
      
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Result'),
                          content: Text('Amount of CO2 Emitted is $calculatedValue'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16),
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
