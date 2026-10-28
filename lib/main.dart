import 'package:flutter/material.dart';

// EACH MEMBER: replace your placeholder below with your own name.
const String member1 = 'OJ Carlo O. Paculba';
const String member2 = 'Member 2 Name';
const String member3 = 'Member 3 Name';
const String member4 = 'Member 4 Name';

const List<String> members = [member1, member2, member3, member4];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuklas Team',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Tuklas Team'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Our Capstone Team Members',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            for (int i = 0; i < members.length; i++)
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('${i + 1}')),
                  title: Text(members[i]),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
