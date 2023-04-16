import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors Near You'),
        backgroundColor: Colors.green,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 150,
          width: 300,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dr Yoseph Kale',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Manipal hospital,patiala\n98771-17745",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ]),
            ),
          ),
        ),
        Container(
          height: 150,
          width: 300,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dr Mohini Seth',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Manosantulan clinic,patiala\n93727-13845",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ]),
            ),
          ),
        ),
        Container(
          height: 150,
          width: 300,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dr Gourav Monga',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Sunny enclave,patiala\n97557-13945",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
