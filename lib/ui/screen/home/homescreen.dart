import 'package:flutter/material.dart';
import 'package:flutterassignment/ui/screen/address/address_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _navigateToAddAddressScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AddressScreen(title: "Registered Address"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.blue,
                elevation: 5,
              ),
              onPressed: _navigateToAddAddressScreen,
              child: const Text('Add address',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
