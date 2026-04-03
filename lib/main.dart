import 'package:flutter/material.dart';
import 'widgets/customHeader.dart'; // adjust if inside widgets/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestHeaderPage(),
    );
  }
}

class TestHeaderPage extends StatefulWidget {
  const TestHeaderPage({super.key});

  @override
  State<TestHeaderPage> createState() => _TestHeaderPageState();
}

class _TestHeaderPageState extends State<TestHeaderPage> {
  UserRole currentRole = UserRole.admin;

  void onMenuTap() {
    // just test click
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Menu clicked")));
  }

  void changeRole(UserRole role) {
    setState(() {
      currentRole = role;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ✅ Your Header
          CustomHeader(role: currentRole, onMenuTap: onMenuTap),

          // ✅ Test Area
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Change Role:"),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () => changeRole(UserRole.admin),
                    child: const Text("Admin"),
                  ),

                  ElevatedButton(
                    onPressed: () => changeRole(UserRole.manager),
                    child: const Text("Manager"),
                  ),

                  ElevatedButton(
                    onPressed: () => changeRole(UserRole.staff),
                    child: const Text("Staff"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
