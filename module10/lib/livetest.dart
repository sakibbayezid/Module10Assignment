import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactListUI(),
  ));
}

class ContactListUI extends StatelessWidget {
  const ContactListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // --- Name Input ---
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Hasan',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // --- Phone Input ---
            TextFormField(
              decoration: const InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),

            // --- Add Button ---
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // --- Contact List ---
            Expanded(
              child: ListView(
                children: const [
                  ContactCard(name: 'Jawad', phone: '01877-777777'),
                  ContactCard(name: 'Ferdous', phone: '01673-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String phone;

  const ContactCard({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: const Icon(Icons.person, color: Colors.brown, size: 30),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(phone),
        trailing: const Icon(Icons.call, color: Colors.blue, size: 28),
      ),
    );
  }
}
